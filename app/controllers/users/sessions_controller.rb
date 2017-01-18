class Users::SessionsController < Devise::SessionsController

  protected

  def after_sign_out_path_for(resource)
    root_path
  end
end
