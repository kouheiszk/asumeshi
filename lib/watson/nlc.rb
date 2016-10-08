module Watson
  class Nlc
    def initialize(lang)
      credential = Settings.watson.nlc[lang]
      return nil unless credential

      @credential = credential
    end

    def fetch_materials(title:)
      return [] if title.blank?

      response = Excon.post("https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/#{@credential.classifier_id}/classify",
                            body: {text: title}.to_json,
                            headers: {"Content-Type" => "application/json", "X-SyncTimeout" => 30},
                            user: @credential.user,
                            password: @credential.password)
      result = JSON.load(response.body)
      if result["code"] == 200
        result["classes"].map do |c|
          {
            id: c["class_name"],
            confidence: c["confidence"],
            name: Teacher.find(c["class_name"]).name
          }
        end
      else
        []
      end
    end
  end
end
