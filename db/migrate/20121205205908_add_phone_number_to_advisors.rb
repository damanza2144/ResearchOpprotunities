class AddPhoneNumberToAdvisors < ActiveRecord::Migration

  def change
    add_column :advisors, :phone_number, :string
  end

  def self.up
    add_column :advisors, :phone_number, :string
  end

  def self.down
    remove_column :advisors, :phone_number
  end

end
