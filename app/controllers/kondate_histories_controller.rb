class KondateHistoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_kondate_history, only: [:show, :destroy]

  # GET /kondate_histories
  # GET /kondate_histories.json
  def index
    @kondate_histories = KondateHistory.all
  end

  # GET /kondate_histories/1
  # GET /kondate_histories/1.json
  def show
  end

  # DELETE /kondate_histories/1
  # DELETE /kondate_histories/1.json
  def destroy
    @kondate_history.destroy
    respond_to do |format|
      format.html { redirect_to kondate_histories_url, notice: 'Kondate history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_kondate_history
    @kondate_history = KondateHistory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def kondate_history_params
    params.fetch(:kondate_history, {})
  end
end
