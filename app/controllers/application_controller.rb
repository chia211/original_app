class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_selected_profile

  def set_profile
    @profile = Profile.find(params[:id])
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  def set_selected_profile
    if session[:profile_id].present?
      @selected_profile = Profile.find_by(id: session[:profile_id])
    end
  end
end
