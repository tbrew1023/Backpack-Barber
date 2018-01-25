class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :subject
      t.string :body
      t.integer :rating
      t.belongs_to :customerID, foreign_key: true
      t.belongs_to :barberID, foreign_key: true

      t.timestamps
    end
  end
end
