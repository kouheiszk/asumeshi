class DebugsController < ApplicationController
  def show
    @query = query_params[:query]
    @nlc_response = Watson::Nlc.new.fetch_classes(text: @query)
    @klasses = Klass.klasses_from_text(@query)
    @exclude_material_names = @klasses.pluck(:name).map { |names| names.split(?,) }.flatten
    @kondates = Kondate.not_contain_keywords(@exclude_material_names)
    @kondate_ids = [
        @kondates.breakfast.pluck(:id).uniq.sample(1).first,
        @kondates.lunch.pluck(:id).uniq.sample(1).first,
        @kondates.dinner.pluck(:id).uniq.sample(1).first
    ].compact
    @result = Kondate.where(id: @kondate_ids)
    @material_names = @result.map(&:materials).flatten.map(&:normalized_name).compact
    @material_names_ordered = @material_names.group_by { |n| n }.sort_by { |_, v| -v.size }.map(&:first)
    @restaurants = Gnavi::Restaurant.new.fetch_restaurant(keywords: @material_names_ordered).uniq { |r| r.code.category_code_s }
  end

  private

  def query_params
    params.permit(:query)
  end
end
