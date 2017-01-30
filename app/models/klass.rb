class Klass < ApplicationRecord
  scope :klasses_from_keywords, -> (keywords) {
    klasses = Watson::Nlc.new.fetch_classes(keywords: keywords)
    where(id: klasses.select { |k| k.confidence > 0 }.map { |k| k.class_name })
  }

  def recipes
    keywords = name.split(?,).map(&:strip)
    Recipe.contain_keywords(keywords)
  end
end
