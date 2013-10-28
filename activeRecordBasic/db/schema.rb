# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131026092838) do

  create_table "customers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "customers_products", id: false, force: true do |t|
    t.integer "customer_id", null: false
    t.integer "product_id",  null: false
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "number"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "part_number"
    t.decimal  "price"
    t.string   "type"
    t.integer  "height"
    t.integer  "user_id"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "occupation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
