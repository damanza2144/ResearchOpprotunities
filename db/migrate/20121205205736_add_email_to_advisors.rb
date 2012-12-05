class AddEmailToAdvisors < ActiveRecord::Migration

  def change
    add_column :advisors, :email, :string
  end

  def self.up
    add_column :advisors, :email, :string
  end

  def self.down
	remove_column :advisors, :email
  end
  
end
