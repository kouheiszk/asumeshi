class Klass < ApplicationRecord
  def recipes(lang:)
    names = attributes["name_#{lang.to_s}"]
    keywords = names.split(?,).map(&:strip)
    Recipe.retrieve_by_keywords(keywords)
  end
end
