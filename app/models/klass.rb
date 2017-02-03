class Klass < ApplicationRecord
  scope :contain_keywords, -> (keywords) { where(keywords.map { "`klasses`.`name` LIKE ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" }) if keywords.present? }
  scope :klasses_from_text, -> (text) {
    klasses = Watson::Nlc.new.fetch_classes(text: text)
    where(id: klasses.select { |k| k.confidence > 0 }.map { |k| k.class_name })
  }

  def recipes
    keywords = name.split(?,).map(&:strip)
    Recipe.contain_keywords(keywords)
  end
end
