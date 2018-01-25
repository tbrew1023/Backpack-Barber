class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password
      t.string :lastName
      t.string :firstName
      t.string :phoneNumber
      t.boolean :isBarber
      t.date :signUpDate
      t.string :userImage
      t.string :city

      t.timestamps
    end
  end
end
