class BoardingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  # GET /boarding/step1
  def step1
  end

  # POST /boarding/step1
  def achieve_step1
    if @user.update(user_params)
      redirect_to redirect_to, notice: 'アレルギーと食べられないものを登録しました'
    else
      render :step1
    end
  end

  # GET /boarding/step1
  def step2

  end

  # POST /boarding/step1
  def achieve_step2

  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:name, :allergy_list, :dislike_list)
  end
end
