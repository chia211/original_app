class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_profiles

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def set_profiles
    if user_signed_in?
      @profiles = current_user.profiles

      # session[:profile_id] が空なら最初のプロフィールをセット
      if session[:profile_id].blank? && @profiles.any?
        session[:profile_id] = @profiles.first.id
      end
    else
      @profiles = []
    end
  end
end
