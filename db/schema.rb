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

ActiveRecord::Schema.define(version: 2019_01_11_043740) do

  create_table "cohort_students", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "student_id"
    t.index ["cohort_id"], name: "index_cohort_students_on_cohort_id"
    t.index ["student_id"], name: "index_cohort_students_on_student_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.string "start_date"
    t.string "end_date"
    t.string "intructor_name"
    t.string "student_name"
  end

  create_table "cohorts_courses", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "course_id"
    t.index ["cohort_id"], name: "index_cohorts_courses_on_cohort_id"
    t.index ["course_id"], name: "index_cohorts_courses_on_course_id"
  end

  create_table "cohorts_instructors", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "instructor_id"
    t.index ["cohort_id"], name: "index_cohorts_instructors_on_cohort_id"
    t.index ["instructor_id"], name: "index_cohorts_instructors_on_instructor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "total_hours"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.string "salary"
    t.string "education_level"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.string "education_level"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
