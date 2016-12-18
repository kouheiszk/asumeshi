module Crawlers
    class Cookpad::KondateCrawler < CookpadCrawler
      SEARCH_URL = "http://cookpad.com/kondate/categories"
      KONDATE_URL = "http://cookpad.com/recipe"
      SEARCH_PAGING_LIMIT = 100
      GENRE_CATEGORY_IDS = {
          breakfast: 4,
          lunch: 5,
          dinner: 6
      }

      def crawl(url:)
        source_uid = Crawlers::Cookpad::KondateCrawler.get_recipe_id_from_url(url: url)

        # すでに保存されている場合はスキップする
        kondate = Kondate.where(source: SOURCE, source_uid: source_uid).first
        return kondate if kondate.present?

        puts "[#{self.class.name}] #{url}"
        Rails.logger.debug "[#{self.class.name}] #{url}"

        # 材料名などを取得
        page = @agent.get(url)
        sleep SLEEP_SEC

        title = page.search("h1.title")&.text&.strip
        image_url = page.search("#kondate_photo_wrapper img")&.first&.get_attribute("src")
        cooking_time = page.search(".cooking_time .center span")&.text&.strip
        recipes = page.search("#ingredients_list .ingredient_name .name")&.map(&:text)&.map(&:strip) || []

        # 保存
        save_crawled_kondate(source_uid: source_uid, url: url, title: title, image_url: image_url, materials: materials)
      end

      def execute
        Kondate.genres.each do |genre, _|
          [*1..SEARCH_PAGING_LIMIT].each do |page|
            search_and_retrieve_kondates(genre: genre, page: page)
          end
        end
      end

      def self.get_recipe_id_from_url(url:)
        url.match(%r|user_kondates/(\d+)|)[1]
      end

      private

      def search_and_retrieve_kondates(genre:, page: 1)
        genre_category_id = GENRE_CATEGORY_IDS[genre.to_sym]
        search_url = "#{SEARCH_URL}/#{genre_category_id}?page=#{page}"

        # すでに検索されている場合はスキップする
        return if CrawledUrl.where(url: search_url).exists?

        page = @agent.get(search_url)
        sleep SLEEP_SEC

        kondates = page.search("#main_content > .kondate_list_view") || []
        kondate_urls = kondates.map do |kondate|
          path = kondate.at("a")[:href]
          kondate_url = "#{BASE_URL}#{path}"
          kondate_url
        end

        kondate_urls.each do |url|
          crawl_kondate_page(url: url)
        end

        # 検索したURLを保存
        CrawledUrl.create(url: search_url)
      end

      def save_crawled_kondate(source_uid:, url:, title:, image_url:, materials:)
        kondate = ::Kondate.new(source: SOURCE, source_uid: "#{source_uid}", url: url, title: title, image_url: image_url)
        materials.each do |m|
          recipe.materials << Material.new(name: m)
        end
        recipe.save
        recipe
      end
    end
  end

# binding.pry
