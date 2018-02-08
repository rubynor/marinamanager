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

ActiveRecord::Schema.define(version: 20180208115050) do

  create_table "boats", force: :cascade do |t|
    t.string "reg_nr"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.decimal "width"
    t.decimal "length"
    t.index ["user_id"], name: "index_boats_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price_per_month", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
  end

  create_table "services_users", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "user_id"
    t.date "start_service"
    t.date "end_service"
    t.index ["service_id"], name: "index_services_users_on_service_id"
    t.index ["user_id"], name: "index_services_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "bank_account", limit: 11
    t.integer "user_level", limit: 1, default: 0
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
    t.string "street_name"
    t.string "phone_number", limit: 8
    t.string "zip_code", limit: 4
    t.string "street_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
