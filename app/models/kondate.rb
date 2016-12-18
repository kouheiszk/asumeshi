class Kondate < ApplicationRecord
  has_many :dishes
  has_many :recipes, through: :dish

  scope :not_contain_keywords, -> (keywords) { joins(:dishes => :recipe).eager_load(:dishes => :recipe).merge(Recipe.not_contain_keywords(keywords)) }
  scope :not_contain_klasses, -> (klasses) { not_contain_keywords(klasses.map(&:name).map { |names| names.split(?,) }.flatten) }

  enum genre: {
      breakfast: 0,
      lunch: 1,
      dinner: 2
  }
end
