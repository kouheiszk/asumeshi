require 'csv'

class TrainingsController < ApplicationController
  def index
  end

  def jp
    respond_to do |format|
      format.html { redirect_to jp_trainings_path(format: :csv) }
      format.csv {
        lang = :jp
        headers["Content-Disposition"] = "attachment; filename=\"#{lang.to_s}.csv\""

        csv_data = CSV.generate do |csv|
          Klass.all.each do |klass|
            names = klass["name_#{lang.to_s}"]
            keywords = names.split(?,).map(&:strip)
            recipes = Recipe.retrieve_by_keywords(keywords)
            recipes.each do |recipe|
              csv << [recipe.title, klass.id]
            end
          end
        end
        send_data(csv_data)
      }
    end
  end

  def en
  end
end
