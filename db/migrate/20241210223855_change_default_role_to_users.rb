class ChangeDefaultRoleToUsers < ActiveRecord::Migration[8.0]
  def change
    change_column_default :users, :role, from: nil, to: 0
    User.update_all(role: 0)
  end
end
