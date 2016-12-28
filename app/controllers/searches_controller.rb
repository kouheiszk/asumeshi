class SearchesController < ApplicationController
  def show
    @keywords = search_params[:keywords] || ""
    @materials = Watson::Nlc.new.fetch_materials(titles: @keywords)

    if @materials.present?
      kondates = Kondate.not_contain_klasses(@materials.map(&:klass))

      @breakfast = kondates.breakfast.sample(1).first
      @lunch = kondates.lunch.sample(1).first
      @dinner = kondates.dinner.sample(1).first
    else
      @breakfast = nil
      @lunch = nil
      @dinner = nil
    end
  end

  private

  def search_params
    params.permit(:keywords)
  end
end
