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

ActiveRecord::Schema.define(version: 2019_10_29_005732) do

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "permissions_id"
    t.index ["permissions_id"], name: "index_events_on_permissions_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "events_permissions", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "permission_id", null: false
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
  end

  create_table "jwt_blacklists", force: :cascade do |t|
    t.string "jti"
    t.datetime "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_blacklists_on_jti"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.integer "events_id"
    t.index ["events_id"], name: "index_permissions_on_events_id"
    t.index ["users_id"], name: "index_permissions_on_users_id"
  end

  create_table "permissions_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "permission_id", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.string "picture"
    t.datetime "date_posted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "duration"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "day"
    t.string "start_time"
    t.string "end_time"
    t.date "date"
    t.integer "user_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "major"
    t.integer "grad_year"
    t.integer "school"
    t.integer "permissions_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["permissions_id"], name: "index_users_on_permissions_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
