class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :title
      t.string :contact_info
      t.string :academic_unit
      t.string :work_period
      t.string :academic_level
      t.string :gpa
      t.text :class_required
      t.text :requirements
      t.text :description
      t.date :application_deadline
      t.boolean :paid
      t.string :unmjobs_number
      t.string :unmjobs_name
      t.string :student_research_assistant

      t.timestamps
    end
  end
end
