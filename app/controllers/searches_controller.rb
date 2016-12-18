class SearchesController < ApplicationController
  before_action :set_debug_mode

  def show
    @title = params[:title]
    @materials = Watson::Nlc.new.fetch_materials(title: params[:title])
    kondates = Kondate.not_contain_klasses(@materials.map(&:klass)) if @materials.present?

    @breakfast = kondates.breakfast.sample(1).first
    @lunch = kondates.lunch.sample(1).first
    @dinner = kondates.dinner.sample(1).first
  end

  private

  def set_debug_mode
    @debug_mode = params[:debug].to_i == 1
  end
end
