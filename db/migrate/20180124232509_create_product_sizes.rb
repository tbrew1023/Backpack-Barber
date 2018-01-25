class CreateProductSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_sizes do |t|
      t.string :size

      t.timestamps
    end
  end
end
