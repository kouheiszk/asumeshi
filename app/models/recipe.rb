class Recipe < ApplicationRecord
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :kondates

  scope :contain_keywords, -> (keywords) { joins(:materials).eager_load(:materials).merge(Material.contain_keywords(keywords)) }
  scope :not_contain_keywords, -> (keywords) { where.not(id: Recipe.contain_keywords(keywords).select(:id)) }
end
