class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.belongs_to :email, foreign_key: true
      t.integer :charge
      t.integer :averageRating
      t.string :description
      t.boolean :barberType

      t.timestamps
    end
  end
end
