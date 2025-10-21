class VitalSign < ApplicationRecord
  before_create :set_measured_at
  
  # validates :measured_at, presence: true


  belongs_to :profile

  private

  def set_measured_at
    self.measured_at ||= Time.current
  end

  def at_least_one_vital_present
    if [body_temperature, blood_pressure_systolic, blood_pressure_diastolic, pulse, breathing].all?(&:blank?)
      errors.add(:base, "少なくとも1つのバイタルを入力してください")
    end
  end
end
