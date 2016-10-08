require "csv"

module Trainings
  class Data
    def self.create(lang:)
      CSV.generate do |csv|
        Klass.all.each do |klass|
          names = klass["name_#{lang.to_s}"]
          keywords = names.split(?,).map(&:strip)
          recipes = Recipe.retrieve_by_keywords(keywords)
          recipes.each do |recipe|
            csv << [recipe.title, klass.id]
          end
        end
      end
    end
  end
end
