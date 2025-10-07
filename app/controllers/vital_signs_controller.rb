class VitalSignsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_profile

  def index
    @vital_signs = VitalSign.all
    
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @vital_sign = @profile.vital_signs.new(vital_sign_params)

    if @vital_sign.save
      redirect_to profile_vital_signs_path(@profile), notice: "登録しました"
    else
      render :index
    end
  end

  def show
    
  end

  # 体温履歴
  def temperature_history
    @temperatures = @selected_profile.vital_signs.order(measured_at: :desc)
  end

  # 血圧履歴
  def blood_pressure_history
    @blood_pressures = @selected_profile.vital_signs.order(measured_at: :desc)
  end

  # 脈拍履歴
  def pulse_history
    @pulses = @selected_profile.vital_signs.order(measured_at: :desc)
  end
  # 酸素履歴
  def breathing_history
    @breathings = @selected_profile.vital_signs.order(measured_at: :desc)
  end

  

  private


  def set_profile
    @profile = current_user.profiles
  end

  def vital_sign_params
    params.require(:vital_sign).permit(:body_temperature, :blood_pressure_systolic, :blood_pressure_diastolic, 
    :pulse, :breathing, :note, :measured_at)
  end
end
