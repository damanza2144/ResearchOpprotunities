class RemoveUsernameFromAdvisors < ActiveRecord::Migration

  def up
    remove_column :advisors, :username
	remove_column :advisors, :password
	remove_column :advisors, :contact_info
	remove_column :advisors, :interests
	remove_column :advisors, :degrees
  end

  def down
    add_column :advisors, :username, :string
	add_column :advisors, :username, :string
    add_column :advisors, :password, :string
    add_column :advisors, :contact_info, :text
    add_column :advisors, :interests, :text
    add_column :advisors, :degrees, :text
  end

end
