class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :dateTime
      t.belongs_to :customerID, foreign_key: true
      t.belongs_to :barberID, foreign_key: true

      t.timestamps
    end
  end
end
