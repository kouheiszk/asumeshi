class Material < ApplicationRecord
  has_and_belongs_to_many :recipe

  scope :contain_keywords, -> (keywords) { where(keywords.map { "`materials`.`name` LIKE ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" }) if keywords.present? }
end
