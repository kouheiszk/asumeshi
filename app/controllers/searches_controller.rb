class SearchesController < ApplicationController
  before_action :set_debug_mode

  def show
    @title = params[:title]
    @materials = Watson::Nlc.new(I18n.locale).fetch_materials(title: params[:title])

    if @materials.present?
      @enough = Klass.where(id: @materials.map(&:id))
      @poor = Klass.where.not(id: @materials.map(&:id))

      enough_keywords = @enough.map(&:names).map { |n| n.split(?,).map(&:strip) }.flatten.uniq
      poor_keywords = @poor.map(&:names).map { |n| n.split(?,).map(&:strip) }.flatten.uniq

      enough_recipe_ids = Recipe.contain_keywords(enough_keywords).eq_lang(I18n.locale).pluck(:id)
      poor_recipe_ids = Recipe.contain_keywords(poor_keywords).eq_lang(I18n.locale).pluck(:id)
      suggestion_recipe_ids = poor_recipe_ids - enough_recipe_ids
      @recommendation = Recipe.where(id: suggestion_recipe_ids).where.not(image_url: nil).sample(1).first
    end
  end

  private

  def set_debug_mode
    @debug_mode = params[:debug].to_i == 1
  end
end
