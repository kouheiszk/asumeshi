class KondatesController < ApplicationController
  before_action :set_yesterday_kondates, only: [:new, :create]

  def show
    if current_user.present?
      @kondates = Kondate.today_kondates_by_user(current_user)
    elsif session[:history].present?
      @kondates = Kondate.today_kondates_by_history(session[:history])
    end

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
  end

  def create
    unless Kondate.is_valid_keywords?(query_params[:query])
      flash.now[:notice] = 'もう少し詳しく入力してください'
      render :new and return
    end

    @kondates = Kondate.create_kondates_from_keywords(query_params[:query], current_user)
    if @kondates.present?
      session[:history] = Kondate.history_from_kondates(@kondates)
      redirect_to kondate_path, notice: '推薦データの生成が完了しました'
    else
      render :new, notice: '推薦データを生成できませんでした'
    end
  end

  private

  def query_params
    params.permit(:query)
  end

  def set_yesterday_kondates
    @yesterday_kondates = Kondate.yesterday_kondates_by_user(current_user)
  end
end
