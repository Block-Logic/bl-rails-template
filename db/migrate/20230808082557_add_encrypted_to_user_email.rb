class AddEncryptedToUserEmail < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :email, :email_encrypted
    add_column :users, :email_encrypted_iv, :string
  end
end
