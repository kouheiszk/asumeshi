module Crawlers
  class Cookpad
    SOURCE = "cookpad"
    BASE_URL = "http://cookpad.com"
    SEARCH_URL = "http://cookpad.com/search"
    RECIPE_URL = "http://cookpad.com/recipe"
    SEARCH_PAGING_LIMIT = 10

    def initialize
      @agent = Mechanize.new
    end

    def save_crawled_recipe(source_uid:, url:, title:, image_url:, materials:)
      recipe = Recipe.new(source: SOURCE, source_uid: source_uid, url: url, title: title, image_url: image_url)
      materials.each do |m|
        recipe.materials << Material.new(name: m)
      end
      recipe.save
    end

    def crawl_recipe_pages(urls:)
      # すでにクロールしたものに関しては取得しない
      urls.each do |url|
        source_uid = Crawlers::Cookpad.get_recipe_id_from_url(url: url)

        # すでに保存されている場合はスキップする
        next if Recipe.where(source: "cookpad", source_uid: source_uid).exists?

        # 材料名などを取得
        page = @agent.get(url)
        title = page.search("#recipe-title h1").text.strip
        image_url = page.search("#main-photo img").first.get_attribute("src")
        materials = page.search("#ingredients_list .ingredient_name .name").map(&:text).map(&:strip)

        # 保存
        save_crawled_recipe(source_uid: source_uid, url: url, title: title, image_url: image_url, materials: materials)
      end
    end

    def search_and_retrieve_recipes(name:, page: 1)
      search_url = "#{SEARCH_URL}/#{name}?order=date&page=#{page}"

      # すでに検索されている場合はスキップする
      return if CrawledUrl.where(url: search_url).exists?

      page = @agent.get(search_url)
      recipes = page.search("#main_content > .recipe-preview")
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
      Klass.all.pluck(:name_jp).each do |names|
        names.split(?,).each do |name|
          [*1..SEARCH_PAGING_LIMIT].each do |page|
            search_and_retrieve_recipes(name: name, page: page)
          end
        end
      end
    end

    def self.execute
      crawler = Crawlers::Cookpad.new
      crawler.run
    end

    def self.get_recipe_id_from_url(url:)
      url.match(%r|recipe/(\d+)|)[1]
    end
  end
end

Crawlers::Cookpad.execute

# binding.pry
