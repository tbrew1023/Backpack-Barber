class CreateStoreProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :store_products do |t|
      t.string :imgurl
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
