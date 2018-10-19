class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
      t.references :students
      t.references :cohorts

      t.timestamps
    end
  end
end
