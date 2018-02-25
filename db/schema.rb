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

ActiveRecord::Schema.define(version: 20180225102249) do

  create_table "berth_orders", force: :cascade do |t|
    t.integer "berth_id"
    t.integer "boat_id"
    t.decimal "price_per_month"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "berths", force: :cascade do |t|
    t.integer "berth_number"
    t.decimal "width", precision: 8, scale: 2
    t.decimal "price_per_month", precision: 8, scale: 2
    t.boolean "in_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pier_id"
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
  end

  create_table "service_orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "service_id"
    t.date "start_service"
    t.date "end_service"
    t.index ["service_id"], name: "index_service_orders_on_service_id"
    t.index ["user_id"], name: "index_service_orders_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.decimal "price_per_month", precision: 8, scale: 2
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_level", limit: 1
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

end
