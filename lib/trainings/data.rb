require "csv"

module Trainings
  class Data
    def self.create(lang:)
      CSV.generate do |csv|
        Klass.all.each do |klass|
          klass.recipes.each do |recipe|
            csv << [recipe.title, klass.id]
          end
        end
      end
    end
  end
end
