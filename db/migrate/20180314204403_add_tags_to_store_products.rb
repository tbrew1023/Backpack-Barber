class AddTagsToStoreProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :store_products, :tags, :string
  end
end
