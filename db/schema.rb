# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_19_171100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labs", force: :cascade do |t|
    t.string "theme_name", null: false
    t.integer "subject_theme_id"
    t.string "goal", null: false
    t.text "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string "theme_name", null: false
    t.integer "subject_theme_id"
    t.text "text", null: false
    t.integer "test_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string "theme_name", null: false
    t.integer "subject_theme_id"
    t.text "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "students" because of following StandardError
#   Unknown type 'int2vector' for column 'phone'

  create_table "subject_themes", force: :cascade do |t|
    t.string "theme_name"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "question"
    t.string "answers"
    t.string "true_answer"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
