module Watson
  class Nlc
    def initialize(lang)
      @lang = lang
      @credential = Settings.watson.nlc[lang]
    end

    def fetch_materials(title:)
      return [] if title.blank?
      return [] if @credential.blank?

      response = Excon.post("https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/#{@credential.classifier_id}/classify",
                            body: {text: title}.to_json,
                            headers: {"Content-Type" => "application/json", "X-SyncTimeout" => 30},
                            user: @credential.user,
                            password: @credential.password)
      result = Hashie::Mash.new(JSON.load(response.body))
      if result.classes.present?
        result.classes.select { |c| c.confidence > 0 }. map do |c|
          Hashie::Mash.new({
            id: c.class_name,
            confidence: c.confidence,
            klass: Klass.find(c.class_name)
          })
        end
      else
        []
      end
    end
  end
end
