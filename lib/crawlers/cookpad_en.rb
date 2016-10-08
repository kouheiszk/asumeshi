module Crawlers
  class CookpadEn
    SOURCE = "cookpad_en"
    BASE_URL = "http://cookpad.com"
    SEARCH_URL = "https://cookpad.com/us/search"
    RECIPE_URL = "https://cookpad.com/us/recipes"
    SEARCH_PAGING_LIMIT = 10
    SLEEP_SEC = 0.2

    def initialize
      @agent = Mechanize.new
    end

    def save_crawled_recipe(source_uid:, url:, title:, image_url:, materials:)
      recipe = Recipe.new(source: SOURCE, source_uid: "#{source_uid}", lang: "en", url: url, title: title, image_url: image_url)
      materials.each do |m|
        recipe.materials << Material.new(name: m)
      end
      recipe.save
    rescue => e
      puts e
    end

    def crawl_recipe_pages(urls:)
      # すでにクロールしたものに関しては取得しない
      urls.each do |url|
        source_uid = Crawlers::CookpadEn.get_recipe_id_from_url(url: url)

        # すでに保存されている場合はスキップする
        next if Recipe.where(source: SOURCE, source_uid: source_uid).exists?

        puts "[#{self.class.name}] #{url}"

        # 材料名などを取得
        page = @agent.get(url)
        sleep SLEEP_SEC

        title = page.search("#about h1")&.text&.strip
        image_url = page.search("#about .image img")&.first&.get_attribute("src")
        materials = page.search("#ingredients .ingredient-list .ingredient__details")&.map do |node|
          node.children&.last&.text&.strip&.downcase
        end || []

        # 保存
        save_crawled_recipe(source_uid: source_uid, url: url, title: title, image_url: image_url, materials: materials)
      end
    end

    def search_and_retrieve_recipes(name:, page: 1)
      search_url = "#{SEARCH_URL}/#{name}?page=#{page}"

      # すでに検索されている場合はスキップする
      return if CrawledUrl.where(url: search_url).exists?

      page = @agent.get(search_url)
      sleep SLEEP_SEC

      recipes = page.search("#main_contents > .recipe-list > .recipe") || []
      recipe_urls = recipes.map do |recipe|
        path = recipe.at("a")[:href]
        recipe_url = "#{BASE_URL}#{path}"
        recipe_url
      end

      crawl_recipe_pages(urls: recipe_urls)

      # 検索したURLを保存
      CrawledUrl.create(url: search_url)
    end

    def run
      Klass.all.pluck(:name_en).each do |names|
        names.split(?,).each do |name|
          [*1..SEARCH_PAGING_LIMIT].each do |page|
            search_and_retrieve_recipes(name: name, page: page)
          end
        end
      end
    end

    def self.execute
      crawler = Crawlers::CookpadEn.new
      crawler.run
    end

    def self.get_recipe_id_from_url(url:)
      url.match(%r|recipes/(\d+)|)[1]
    end
  end
end

Crawlers::CookpadEn.execute

# binding.pry
