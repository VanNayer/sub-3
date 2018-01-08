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

ActiveRecord::Schema.define(version: 20180107171142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plan_templates", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plan_template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_template_id"], name: "index_plans_on_plan_template_id"
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.date "birthdate"
    t.boolean "gender"
    t.string "username"
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_templates", force: :cascade do |t|
    t.bigint "plan_template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_template_id"], name: "index_workout_templates_on_plan_template_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.bigint "workout_template_id"
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_workouts_on_plan_id"
    t.index ["workout_template_id"], name: "index_workouts_on_workout_template_id"
  end

  add_foreign_key "plans", "plan_templates"
  add_foreign_key "plans", "users"
  add_foreign_key "workout_templates", "plan_templates"
  add_foreign_key "workouts", "plans"
  add_foreign_key "workouts", "workout_templates"
end
