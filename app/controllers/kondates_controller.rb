class KondatesController < ApplicationController
  before_action :set_yesterday_kondates, only: [:new, :create]

  def show
    kondate_histories = session[:kondate_histories]
    kondate_histories = KondateHistory.histories_for_user(current_user) if current_user.present?

    @kondates = Kondate.kondates_by_kondate_histories(kondate_histories).includes(:recipes => :materials)
    if @kondates.blank?
      redirect_to new_kondate_path, notice: '昨日食べたものを入力してください'
    end
  end

  def new
    # すでに本日検索済みだったら検索結果を表示する
    @today_kondates = KondateHistory.histories_for_user(current_user)
    if @today_kondates.present?
      redirect_to kondate_path
    end
  end

  def create
    unless Kondate.is_valid_keywords?(query_params[:query])
      flash.now[:notice] = 'もう少し詳しく入力してください'
      render :new and return
    end

    @kondates = Kondate.create_kondates_from_keywords(query_params[:query], exclude_keywords: current_user&.exclude_recipe_material_names)
    if @kondates.present?
      session[:kondate_histories] = KondateHistory.create_kondate_histories_from_kondates(@kondates, user: current_user)
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
    histories = KondateHistory.histories_for_user(current_user, at: -1.day)
    @yesterday_kondates = Kondate.kondates_by_kondate_histories(histories)
  end
end
