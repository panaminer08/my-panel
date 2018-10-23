class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :in_class_hours
      t.references :cohorts

      t.timestamps
    end
  end
end
