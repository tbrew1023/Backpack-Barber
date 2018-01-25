class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.belongs_to :productType, foreign_key: true
      t.belongs_to :productColor, foreign_key: true
      t.belongs_to :productSize, foreign_key: true
      t.integer :productPrice

      t.timestamps
    end
  end
end
