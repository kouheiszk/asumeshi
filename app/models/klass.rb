class Klass < ApplicationRecord
  has_and_belongs_to_many :recommendations

  def recipes(lang: I18n.locale)
    names = self.names(lang: lang)
    keywords = names.split(?,).map(&:strip)
    Recipe.contain_keywords(keywords).eq_lang(lang)
  end

  def names(lang: I18n.locale)
    attributes["name_#{lang.to_s}"]
  end
end
