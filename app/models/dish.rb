class Dish < ApplicationRecord
  belongs_to :kondate, required: true
  belongs_to :recipe, required: true

  scope :contain_keywords, -> (keywords) { joins(:recipe => :materials).eager_load(:recipe => :materials).merge(Material.contain_keywords(keywords)) }
end
