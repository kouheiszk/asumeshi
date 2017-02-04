class Recipe < ApplicationRecord
  TITLE_REGEX = /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/

  has_and_belongs_to_many :materials
  has_and_belongs_to_many :kondates

  scope :contain_keywords, -> (keywords) { joins(:materials).eager_load(:materials).merge(Material.contain_keywords(keywords)) }

  def self.is_valid_recipe_title?(title)
    (title =~ TITLE_REGEX).present?
  end
end
