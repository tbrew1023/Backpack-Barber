class AddProductTypeToStoreProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :store_products, :product_type, :string
  end
end
