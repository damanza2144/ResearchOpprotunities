class AddActiveColumnToResearches < ActiveRecord::Migration
  def change
    add_column :researches, :active, :boolean
  end

  def self.up
    add_column :researches, :active, :boolean
  end

  def self.down
    remove_column :researches, :active, :boolean
  end
end
