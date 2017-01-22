class BoardingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  # GET /boarding/step1
  def step1
  end

  # POST /boarding/step1
  def achieve_step1
    if @user.update(user_params)
      redirect_to boarding_step2_path, notice: 'アレルギーと食べられないものを登録しました'
    else
      render :step1
    end
  end

  # GET /boarding/step1
  def step2
  end

  # POST /boarding/step1
  def achieve_step2
    if @user.update(user_params)
      redirect_to search_kondate_path, notice: '食事方法を登録しました'
    else
      render :step2
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:name, :style, :allergy_list, :dislike_list)
  end
end
