class CreateCalendars < ActiveRecord::Migration[7.1]
  def change
    create_table :calendars do |t|
      t.string :title
      t.text :comment
      t.date :date
      t.references :profile ,foreign_key: true
      t.timestamps
    end
  end
end
