class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :description
      t.string :desturl
      t.string :imgpath
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
