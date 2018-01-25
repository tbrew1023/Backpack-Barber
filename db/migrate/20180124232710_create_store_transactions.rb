class CreateStoreTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :store_transactions do |t|
      t.datetime :dateTime
      t.integer :charge
      t.belongs_to :customerID, foreign_key: true
      t.belongs_to :productID, foreign_key: true

      t.timestamps
    end
  end
end
