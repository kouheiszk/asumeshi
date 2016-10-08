class Recipe < ApplicationRecord
  has_many :materials

  scope :retrieve_by_keywords, -> (keywords) { Recipe.joins(:materials).eager_load(:materials).where(keywords.map { |k| "materials.name like ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" }) }
  scope :retrieve_by_keyword, -> (keyword) { retrieve_by_keywords([keyword]) }
end
