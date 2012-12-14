class AddAdvisorIdToResearches < ActiveRecord::Migration
  def change
    add_column :researches, :advisor_id, :integer
  end
end
