class TrainingsController < ApplicationController
  def index
  end

  def ja
    respond_to do |format|
      format.html { redirect_to ja_trainings_path(format: :csv) }
      format.csv {
        headers["Content-Disposition"] = "attachment; filename=\"ja.csv\""
        csv_data = Trainings::Data.create(lang: :ja)
        send_data(csv_data)
      }
    end
  end

  def en
    respond_to do |format|
      format.html { redirect_to en_trainings_path(format: :csv) }
      format.csv {
        headers["Content-Disposition"] = "attachment; filename=\"en.csv\""
        csv_data = Trainings::Data.create(lang: :en)
        send_data(csv_data)
      }
    end
  end
end
