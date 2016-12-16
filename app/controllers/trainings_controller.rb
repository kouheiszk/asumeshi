class TrainingsController < ApplicationController
  def index
    respond_to do |format|
      format.html { redirect_to ja_trainings_path(format: :csv) }
      format.csv {
        headers['Content-Disposition'] = 'attachment; filename="trainings.csv"'
        csv_data = Trainings::Data.build
        send_data(csv_data)
      }
    end
  end
end
