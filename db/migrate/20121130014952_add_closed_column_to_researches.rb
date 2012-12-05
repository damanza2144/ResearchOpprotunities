class AddClosedColumnToResearches < ActiveRecord::Migration
  def change
    add_column :researches, :closed, :boolean
  end

  def self.up
    add_column :researches, :closed, :boolean
  end

  def self.down
    remove_column :researches, :closed, :boolean
  end

end
