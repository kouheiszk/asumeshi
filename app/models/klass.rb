class Klass < ApplicationRecord
  def recipes
    keywords = name.split(?,).map(&:strip)
    Recipe.contain_keywords(keywords)
  end
end
