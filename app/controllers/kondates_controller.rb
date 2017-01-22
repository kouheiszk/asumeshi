class KondatesController < ApplicationController
  def search
    @yesterday_dishes = search_params[:yesterday_dishes]
    @materials = Watson::Nlc.new.fetch_materials(keywords: @yesterday_dishes)

    if @materials.present?
      keywords = @materials.map(&:klass).map(&:name).map { |names| names.split(?,) }.flatten
      keywords = keywords.concat(current_user.allergy_list).concat(current_user.dislike_list).uniq if current_user.present?
      kondates = Kondate.not_contain_keywords(keywords)

      @breakfast = kondates.breakfast.sample(1).first
      @lunch = kondates.lunch.sample(1).first
      @dinner = kondates.dinner.sample(1).first
    end
  end

  private

  def search_params
    params.permit(:yesterday_dishes)
  end
end
