class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys:[:name])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:surname])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:surname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:surname])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:fathername])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:fathername])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fathername])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:groupname])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:groupname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:groupname])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:student])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:student])
    devise_parameter_sanitizer.permit(:account_update, keys: [:student])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:teacher])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:teacher])
    devise_parameter_sanitizer.permit(:account_update, keys: [:teacher])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:curator])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:curator])
    devise_parameter_sanitizer.permit(:account_update, keys: [:curator])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:position])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:position])
    devise_parameter_sanitizer.permit(:account_update, keys: [:position])
  end

  protect_from_forgery with: :exception
end
