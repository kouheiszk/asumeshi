class Recipe < ApplicationRecord
  has_many :materials

  scope :contain_keywords, -> (keywords) { Recipe.joins(:materials).eager_load(:materials).where(keywords.map { |k| "materials.name like ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" }) }
  scope :contain_keyword, -> (keyword) { contain_keywords([keyword]) }

  def shop_url
  end
end
