class AddOpenColumnToResearches < ActiveRecord::Migration
  def change
    add_column :researches, :open, :boolean
  end

  def self.up
    add_column :researches, :open, :boolean
  end

  def self.down
    remove_column :researches, :open
  end
end
