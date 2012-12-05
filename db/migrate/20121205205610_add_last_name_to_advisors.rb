class AddLastNameToAdvisors < ActiveRecord::Migration

  def change
    add_column :advisors, :last_name, :string
  end

  def self.up
    add_column :advisors, :last_name, :string
  end

  def self.down
	remove_column :advisors, :last_name
  end
  
end
