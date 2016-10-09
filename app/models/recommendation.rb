class Recommendation < ApplicationRecord
  has_and_belongs_to_many :klasses

  scope :exclude_klasses, -> (klasses) {joins(:klasses).eager_load(:klasses).where.not(klasses: {id: klasses.pluck(:id)})}

  attr_reader :materials, :enoughs, :poors

  def self.pick(materials)
    enough = Klass.where(id: materials.map(&:id))
    poor = Klass.where.not(id: materials.map(&:id))

    recommendation = Recommendation.exclude_klasses(enough).sample
    recommendation.customize(materials, enough, poor)
  end

  def customize(materials, enough, poor)
    @materials = materials
    @enough = enough
    @poor = poor

    I18n.locale == :ja ? customize_for_ja : customize_for_en
  end

  def title
    attributes["name_#{I18n.locale}"]
  end

  private

  def customize_for_ja
    self
  end

  def customize_for_en
    enough_keywords = @enough.map(&:names).map { |n| n.split(?,).map(&:strip) }.flatten.uniq
    poor_keywords = @poor.map(&:names).map { |n| n.split(?,).map(&:strip) }.flatten.uniq

    enough_recipe_ids = Recipe.contain_keywords(enough_keywords).eq_lang(I18n.locale).pluck(:id)
    poor_recipe_ids = Recipe.contain_keywords(poor_keywords).eq_lang(I18n.locale).pluck(:id)
    suggest_recipe_ids = poor_recipe_ids - enough_recipe_ids
    Recipe.where(id: suggest_recipe_ids).where.not(image_url: nil).sample
  end
end
