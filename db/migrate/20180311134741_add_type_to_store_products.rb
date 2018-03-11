class AddTypeToStoreProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :store_products, :type, :string
  end
end
