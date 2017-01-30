module Watson
  class Nlc
    def initialize
      @credential = Settings.watson.nlc
    end

    def fetch_classes(keywords:)
      return [] if keywords.blank?
      return [] if @credential.blank?

      url = "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/#{@credential.classifier_id}/classify"
      response = Excon.post(url,
                            body: { text: keywords }.to_json,
                            headers: { 'Content-Type' => 'application/json', 'X-SyncTimeout' => 30 },
                            user: @credential.user,
                            password: @credential.password)
      result = Hashie::Mash.new(JSON.load(response.body))
      result[:classes]
    end
  end
end
