class CreateProductColors < ActiveRecord::Migration[5.1]
  def change
    create_table :product_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
