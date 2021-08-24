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

ActiveRecord::Schema.define(version: 20210824150712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "description"
    t.string   "country"
    t.integer  "price"
    t.integer  "remaining_quota"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.integer  "lodging"
    t.integer  "guests"
    t.boolean  "friday"
    t.boolean  "crepe"
    t.boolean  "sunday"
    t.string   "observation"
    t.string   "hair_makeup"
    t.string   "full_names"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "vaccine"
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "buyer"
    t.integer  "quotas"
    t.string   "status"
    t.integer  "gift_id"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
