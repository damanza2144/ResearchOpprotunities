class AddFirstNameToAdvisors < ActiveRecord::Migration

  def change
    add_column :advisors, :first_name, :string
  end

  def self.up
    add_column :advisors, :first_name, :string
  end

  def self.down
	remove_column :advisors, :first_name
  end
  
end
