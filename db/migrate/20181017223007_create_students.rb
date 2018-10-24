class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
    t.string :last_name
    t.string :username
    t.string :encrypted_password, default: "", null: false
    t.integer :age
    t.string :highest_completed_education
    t.references :cohorts
    t.references :student_cohorts

      t.timestamps
    end
  end
end
