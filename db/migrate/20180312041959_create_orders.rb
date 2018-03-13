class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.date :salesdate
      t.string :salesnotes

      t.timestamps
    end
  end
end
