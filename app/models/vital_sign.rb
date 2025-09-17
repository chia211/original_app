class VitalSign < ApplicationRecord
  before_create :set_measured_at

  private

  def set_measured_at
    self.measured_at ||= Time.current
  end
end
