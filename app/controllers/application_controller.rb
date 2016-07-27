class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
 def configure_sign_up_params
     devise_parameter_sanitizer.for(:sign_up) << :nickname
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
     devise_parameter_sanitizer.for(:account_update) << :nickname
  end
end
