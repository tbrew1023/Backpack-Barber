class AddUsernamePasswordDigestToAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :username, :string
    add_column :accounts, :password_digest, :string
  end
end
