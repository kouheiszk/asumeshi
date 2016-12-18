class Kondate < ApplicationRecord
  has_and_belongs_to_many :recipes

  enum genre: {
      breakfast: 0,
      lunch: 1,
      dinner: 2
  }
end
