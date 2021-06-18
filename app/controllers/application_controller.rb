class ApplicationController < ActionController::Base
  before_action :configure_prtmitted_parameters, if: :devise_controller?

  def configure_prtmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
