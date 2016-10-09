class SearchesController < ApplicationController
  before_action :set_debug_mode

  def show
    @title = params[:title]
    @materials = Watson::Nlc.new(I18n.locale).fetch_materials(title: params[:title])
    @recommendation = Recommendation.pick(@materials) if @materials.present?
  end

  private

  def set_debug_mode
    @debug_mode = params[:debug].to_i == 1
  end
end
