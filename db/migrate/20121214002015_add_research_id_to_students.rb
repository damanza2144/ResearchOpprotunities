class AddResearchIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :research_id, :integer
  end
end
