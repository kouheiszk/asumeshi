class Recipe < ApplicationRecord
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :kondates

  scope :contain_keywords, -> (keywords) { joins(:materials).eager_load(:materials).where(keywords.map { |k| "materials.name like ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" }) }
  scope :contain_keyword, -> (keyword) { contain_keywords([keyword]) }
end
