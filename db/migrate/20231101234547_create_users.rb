# db/migrate/YYYYMMDDHHMMSS_create_users.rb
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :provider
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :email
      t.string :major
      t.string :first_name
      t.string :last_name
      t.string :profile_pic

      t.timestamps
    end

    add_index :users, :uid, unique: true
  end
end
