class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.belongs_to :imageGroupID, foreign_key: true
      t.string :url
      t.integer :sizeX
      t.integer :sizeY

      t.timestamps
    end
  end
end
