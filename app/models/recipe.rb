class Recipe < ApplicationRecord
  has_many :materials

  scope :retrieve_by_keywords, -> (keywords) {
    Recipe.joins(:materials).eager_load(:materials).where(keywords.map { |k| "materials.name like ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" })
  }
end
