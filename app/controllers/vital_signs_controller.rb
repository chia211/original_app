class VitalSignsController < ApplicationController
  before_action :set_profile

  def index
    @vital_signs = VitalSign.all
  end

  def create
    VitalSign.create(vital_sign_params)
    redirect_to "/vital_signs"
  end

  def show
    
  end

  # 体温履歴
  def temperature_history
    @temperatures = @profile.vital_signs.order(measured_at: :desc).pluck(:body_temperature, :measured_at)
  end

  # 血圧履歴
  def blood_pressure_history
    @blood_pressures = @profile.vital_signs.order(measured_at: :desc).pluck(:blood_pressure_systolic, :blood_pressure_diastolic, :measured_at)
  end

  # 脈拍履歴
  def pulse_history
    @pulses = @profile.vital_signs.order(measured_at: :desc).pluck(:pulse, :measured_at)
  end
  

  private

  
  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def vital_sign_params
    params.require(:vital_sign).permit(:body_temperature, :blood_pressure_systolic, :blood_pressure_diastolic, 
    :pulse, :breathing, :note, :measured_at)
  end
end
