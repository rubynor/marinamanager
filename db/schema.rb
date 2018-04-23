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

ActiveRecord::Schema.define(version: 20180423100232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "berth_orders", force: :cascade do |t|
    t.bigint "berth_id"
    t.bigint "boat_id"
    t.date "start_berth_order"
    t.date "end_berth_order"
    t.index ["berth_id"], name: "index_berth_orders_on_berth_id"
    t.index ["boat_id"], name: "index_berth_orders_on_boat_id"
  end

  create_table "berths", force: :cascade do |t|
    t.integer "berth_number"
    t.decimal "width", precision: 8, scale: 2
    t.decimal "cost", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pier_id"
  end

  create_table "boat_seasons", force: :cascade do |t|
    t.string "title"
    t.date "startSeason"
    t.date "endSeason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boats", force: :cascade do |t|
    t.string "reg_number"
    t.string "model"
    t.decimal "width", precision: 8, scale: 2
    t.decimal "length", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "piers", force: :cascade do |t|
    t.string "letter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "length"
  end

  create_table "service_orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "service_id"
    t.date "start_service_order"
    t.date "end_service_order"
    t.index ["service_id"], name: "index_service_orders_on_service_id"
    t.index ["user_id"], name: "index_service_orders_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "cost"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_level", limit: 2
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number", limit: 8
    t.string "street_name"
    t.string "street_number", limit: 5
    t.string "post_code", limit: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "berths", "piers", name: "pier_id"
  add_foreign_key "boats", "users", name: "user_id"
end
