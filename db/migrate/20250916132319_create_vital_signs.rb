class CreateVitalSigns < ActiveRecord::Migration[7.1]
  def change
    create_table :vital_signs do |t|
      t.float :body_temperature
      t.string :blood_pressure_systolic
      t.string :blood_pressure_diastolic
      t.integer :pulse
      t.integer :breathing
      t.text :note
      t.datetime :measured_at
      t.references :profile
      t.timestamps
    end
  end
end
