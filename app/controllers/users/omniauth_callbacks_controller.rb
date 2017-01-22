class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = 'ログインしました' if is_navigational_format?
      sign_in_and_redirect @user, event: :authentication
    else
      flash[:error] = 'ログインできませんでした' if is_navigational_format?
      session['devise.facebook'] = request.env['omniauth.auth']
      redirect_to root_path
    end
  end

  def failure
    redirect_to root_path
  end

  protected

  def after_sign_in_path_for(resource)
    if resource.sign_in_count <= 1
      # 初回ログインの際は、アレルギーなどを聞く画面に遷移する
      boarding_step1_path
    else
      # 料理名入力画面に遷移
      search_kondate_path
    end
  end
end
