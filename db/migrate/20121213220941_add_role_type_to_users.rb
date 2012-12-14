class AddRoleTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roll_type, :string
  end
end
