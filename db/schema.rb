# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_17_223245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "instructors_id"
    t.bigint "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_cohorts_on_courses_id"
    t.index ["instructors_id"], name: "index_cohorts_on_instructors_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "in_class_hours"
    t.bigint "cohorts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohorts_id"], name: "index_courses_on_cohorts_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "encrypted_password", default: "", null: false
    t.integer "age"
    t.integer "salary"
    t.string "highest_completed_education"
    t.bigint "cohorts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohorts_id"], name: "index_instructors_on_cohorts_id"
  end

  create_table "student_cohorts", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_student_cohorts_on_cohort_id"
    t.index ["student_id"], name: "index_student_cohorts_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "encrypted_password", default: "", null: false
    t.integer "age"
    t.string "highest_completed_education"
    t.bigint "cohorts_id"
    t.bigint "student_cohorts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohorts_id"], name: "index_students_on_cohorts_id"
    t.index ["student_cohorts_id"], name: "index_students_on_student_cohorts_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
