class RemoveUidNullConstraintFromUsers < ActiveRecord::Migration
  def change
    change_column_null :users, :uid, true
  end
end
