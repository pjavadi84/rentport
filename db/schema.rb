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

ActiveRecord::Schema.define(version: 20200207060701) do

  create_table "properties", force: :cascade do |t|
    t.integer  "address_number"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "unit_number"
    t.integer  "square_footage"
    t.integer  "number_of_rooms"
    t.integer  "year_built"
    t.string   "plan_type"
    t.boolean  "amenities_has_pool"
    t.boolean  "amenities_has_indoor_laundry"
    t.integer  "number_of_parkings"
    t.integer  "contract_period_by_month"
    t.integer  "price"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "company_name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
