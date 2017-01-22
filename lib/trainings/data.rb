require 'csv'

module Trainings
  class Data
    def self.build
      CSV.generate do |csv|
        Klass.all.each do |klass|
          klass.recipes.each do |recipe|
            if Recipe.is_valid_recipe_title?(recipe.title)
              csv << [recipe.title, klass.id]
            end
          end
        end
      end
    end
  end
end
