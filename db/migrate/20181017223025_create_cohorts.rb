class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string "name"
      t.integer "start_date"
      t.integer "end_date"
      t.references :instructors
      t.references :courses
      t.references :student_cohorts
      t.references :students


      t.timestamps
    end
  end
end
