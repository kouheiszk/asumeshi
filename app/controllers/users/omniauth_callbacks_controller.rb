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
end
