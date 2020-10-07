class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]
  before_action :configre_permitted_parameters, if: :devise_controller?

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
