class Kondate < ApplicationRecord
  has_many :dishes
  has_many :recipes, through: :dishes

  scope :not_contain_keywords, -> (keywords) { joins(:dishes => :recipe).eager_load(:dishes => :recipe).merge(Recipe.not_contain_keywords(keywords)) }

  enum genre: {
      breakfast: 0,
      lunch: 1,
      dinner: 2
  }

  def materials
    recipes.map(&:materials).flatten
  end
end
