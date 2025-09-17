class VitalSign < ApplicationRecord
  before_create :set_measured_at
  
  validates :body_temperature, numericality: { greater_than_or_equal_to: 35.0 }


  private

  def set_measured_at
    self.measured_at ||= Time.current
  end
end
