class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :DateTime
      t.string :location
      t.belongs_to :customerID, foreign_key: true
      t.belongs_to :barberID, foreign_key: true

      t.timestamps
    end
  end
end
