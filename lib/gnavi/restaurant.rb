module Gnavi
  class Restaurant
    def fetch_restaurant(keywords:, coordinates: nil)
      latitude = coordinates.present? ? coordinates[:latitude] : nil
      longitude = coordinates.present? ? coordinates[:longitude] : nil
      freeword = keywords.first(10).join(?,)
      url = "https://api.gnavi.co.jp/RestSearchAPI/20150630/?keyid=#{Settings.gnavi.access_key}&freeword=#{freeword}&freeword_condition=2&latitude=#{latitude}&longitude=#{longitude}&format=json"
      response = Excon.get(URI.escape(url))
      result = Hashie::Mash.new(JSON.load(response.body))
      result[:rest]
    end
  end
end
