class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight
      t.text :medical_history
      t.date :birthday
      t.references :user ,foreign_key: true
      t.timestamps
    end
  end
end
