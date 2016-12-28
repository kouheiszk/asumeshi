require "csv"

module Trainings
  class Data
    TITLE_REGEX = /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/

    def self.build
      CSV.generate do |csv|
        Klass.all.each do |klass|
          klass.recipes.each do |recipe|
            csv << [recipe.title, klass.id] if (recipe.title =~ TITLE_REGEX).present?
          end
        end
      end
    end
  end
end
