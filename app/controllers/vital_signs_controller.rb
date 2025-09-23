class VitalSignsController < ApplicationController

  def index
    @vital_signs = VitalSign.all
  end

  def create
    VitalSign.create(vital_sign_params)
    redirect_to "/vital_signs"
  end

  

  private

  def vital_sign_params
    params.require(:vital_sign).permit(:body_temperature, :blood_pressure_systolic, :blood_pressure_diastolic, 
    :pulse, :breathing, :note, :measured_at)
  end
end
