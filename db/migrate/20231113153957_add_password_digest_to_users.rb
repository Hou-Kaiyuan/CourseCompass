class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    change_column :users, :uid, :string, null: true
    end
  end
end
