class KondatesController < ApplicationController

  def show
    @kondates = Kondate.today_kondates_by_user(current_user)
    if @kondates.blank?
      redirect_to new_kondate_path, notice: '昨日食べたものを入力してください' and return
    end
  end

  def new
    # すでに本日検索済みだったら検索結果を表示する
    @today_kondates = Kondate.today_kondates_by_user(current_user)
    if @today_kondates.present?
      redirect_to kondate_path and return
    end

    @yesterday_kondates = Kondate.yesterday_kondates_by_user(current_user)
    @kondate = Kondate.new
  end

  def create
    @kondates = Kondate.create_kondates_from_keywords(kondate_params[:title], current_user)
    if @kondates.present?
      if current_user.present?
        redirect_to kondate_path, notice: '解析が完了しました'
      else
        render :show
      end
    else
      render :new
    end
  end

  private

  def kondate_params
    params.require(:kondate).permit(:title)
  end
end
