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

ActiveRecord::Schema.define(version: 20180201115800) do

  create_table "boats", primary_key: "reg_nr", id: :string, force: :cascade do |t|
    t.string "model"
    t.decimal "width"
    t.decimal "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["reg_nr"], name: "sqlite_autoindex_boats_1", unique: true
    t.index ["user_id"], name: "index_boats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "last_name"
    t.string "first_name"
    t.string "phone", limit: 8
    t.string "address"
    t.string "bank_account", limit: 11
    t.integer "user_level", limit: 1, default: 0
  end

end
