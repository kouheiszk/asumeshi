module Crawlers
  class Crawler
    def initialize
      @agent = Mechanize.new
    end

    def self.crawl(url:)
      crawler = self.new
      crawler.crawl(url: url)
    rescue => e
      puts e
      Rails.logger.error e
    end

    def self.execute
      crawler = self.new
      crawler.execute
    rescue => e
      puts e
      Rails.logger.error e
    end
  end
end
