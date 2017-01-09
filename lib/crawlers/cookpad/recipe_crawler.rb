module Crawlers
  class Cookpad::RecipeCrawler < CookpadCrawler
    SEARCH_URL = 'http://cookpad.com/search'
    SEARCH_PAGING_LIMIT = 10

    def crawl(url:)
      source_uid = Crawlers::Cookpad::RecipeCrawler.get_recipe_id_from_url(url)

      # すでに保存されている場合はスキップする
      recipe = Recipe.where(source: SOURCE, source_uid: source_uid).first
      return recipe if recipe.present?

      puts "[#{self.class.name}] #{url}"
      Rails.logger.debug "[#{self.class.name}] #{url}"

      # 材料名などを取得
      page = @agent.get(url)
      sleep SLEEP_SEC

      title = page.search('#recipe-title h1')&.text&.strip
      image_url = page.search('#main-photo img')&.first&.get_attribute('src')
      materials = page.search('#ingredients_list .ingredient_name .name')&.map(&:text)&.map(&:strip) || []

      # 保存
      if Recipe.is_valid_recipe_title?(title)
        save_crawled_recipe(source_uid: source_uid, url: url, title: title, image_url: image_url, materials: materials)
      end
    end

    def execute
      Klass.all.pluck(:name).each do |names|
        names.split(?,).each do |name|
          [*1..SEARCH_PAGING_LIMIT].each do |page|
            search_and_retrieve_recipes(name: name, page: page)
          end
        end
      end
    end

    def self.get_recipe_id_from_url(url)
      url.match(%r|recipe/(\d+)|)[1]
    end

    private

    def search_and_retrieve_recipes(name:, page: 1)
      search_url = "#{SEARCH_URL}/#{name}?order=date&page=#{page}"

      # すでに検索されている場合はスキップする
      return if CrawledUrl.where(url: search_url).exists?

      page = @agent.get(search_url)
      sleep SLEEP_SEC

      recipes = page.search('#main_content > .recipe-preview') || []
      recipe_urls = recipes.map do |recipe|
        path = recipe.at('a')[:href]
        recipe_url = "#{BASE_URL}#{path}"
        recipe_url
      end

      recipe_urls.each do |url|
        crawl(url: url)
      end

      # 検索したURLを保存
      CrawledUrl.create(url: search_url)
    end

    def save_crawled_recipe(source_uid:, url:, title:, image_url:, materials:)
      return nil unless source_uid.present?
      return nil unless url.present?
      return nil unless title.present?
      return nil unless image_url.present?
      return nil unless materials.present?

      recipe = Recipe.new(source: SOURCE, source_uid: "#{source_uid}", url: url, title: title, image_url: image_url)
      materials.each do |material|
        recipe.materials << Material.find_or_create_by(name: material)
      end
      recipe.tap(&:save)
    end
  end
end

# binding.pry
