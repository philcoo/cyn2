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

ActiveRecord::Schema.define(version: 20160920022900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "capacity"
    t.integer  "people_inside"
    t.integer  "timer"
    t.index ["owner_id"], name: "index_bars_on_owner_id", using: :btree
  end

  create_table "drinks", force: :cascade do |t|
    t.string   "name"
    t.integer  "quality"
    t.float    "price"
    t.float    "max_price"
    t.float    "min_price"
    t.integer  "bar_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.float    "current_price"
    t.float    "price_difference"
    t.text     "bio"
    t.string   "category"
    t.string   "table_name"
    t.index ["bar_id"], name: "index_drinks_on_bar_id", using: :btree
  end

  create_table "fitbits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ihealths", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "response"
    t.string   "parsed_response"
  end

  create_table "manes", force: :cascade do |t|
    t.string   "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "prices", force: :cascade do |t|
    t.float    "amount"
    t.integer  "drink_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_id"], name: "index_prices_on_drink_id", using: :btree
  end

  create_table "pulse_oxes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.float    "price"
    t.integer  "drink_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_id"], name: "index_sales_on_drink_id", using: :btree
  end

  add_foreign_key "bars", "owners"
  add_foreign_key "drinks", "bars"
  add_foreign_key "prices", "drinks"
  add_foreign_key "sales", "drinks"
end
