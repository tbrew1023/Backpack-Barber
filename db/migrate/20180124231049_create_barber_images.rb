class CreateBarberImages < ActiveRecord::Migration[5.1]
  def change
    create_table :barber_images do |t|
      t.belongs_to :customerID, foreign_key: true

      t.timestamps
    end
  end
end
