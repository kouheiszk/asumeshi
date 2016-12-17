class Kondate < ApplicationRecord
  has_and_belongs_to_many :recipes
end
