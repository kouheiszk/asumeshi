class TrainingsController < ApplicationController
  def index
  end

  def jp
    respond_to do |format|
      format.html { redirect_to jp_trainings_path(format: :csv) }
      format.csv {
        headers["Content-Disposition"] = "attachment; filename=\"jp.csv\""
        csv_data = Trainings::Data.create(lang: :jp)
        send_data(csv_data)
      }
    end
  end

  def en
    respond_to do |format|
      format.html { redirect_to jp_trainings_path(format: :csv) }
      format.csv {
        headers["Content-Disposition"] = "attachment; filename=\"en.csv\""
        csv_data = Trainings::Data.create(lang: :en)
        send_data(csv_data)
      }
    end
  end
end
