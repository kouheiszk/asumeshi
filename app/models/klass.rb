class Klass < ApplicationRecord
  def recipes(lang:)
    names = attributes["name_#{lang.to_s}"]
    keywords = names.split(?,).map(&:strip)
    Recipe.contain_keywords(keywords).eq_lang(lang)
  end
end
