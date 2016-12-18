class Dish < ApplicationRecord
  belongs_to :kondate, required: true
  belongs_to :recipe, required: true
end
