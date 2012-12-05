class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :minor
      t.string :major
      t.decimal :GPA
      t.text :interests

      t.timestamps
    end
  end
end
