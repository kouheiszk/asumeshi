class Kondate < ApplicationRecord
  has_many :dishes
  has_many :recipes, through: :dish

  enum genre: {
      breakfast: 0,
      lunch: 1,
      dinner: 2
  }
end
