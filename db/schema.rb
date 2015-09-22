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

ActiveRecord::Schema.define(version: 20150922185120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bands", ["group_id"], name: "index_bands_on_group_id", using: :btree

  create_table "bands_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "band_id", null: false
  end

  add_index "bands_users", ["band_id"], name: "index_bands_users_on_band_id", using: :btree
  add_index "bands_users", ["user_id"], name: "index_bands_users_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.boolean  "organization"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_day"
    t.datetime "end_day"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rooms", ["group_id"], name: "index_rooms_on_group_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.datetime "start_day"
    t.datetime "end_day"
    t.integer  "group_id"
    t.integer  "room_id"
    t.integer  "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "schedules", ["band_id"], name: "index_schedules_on_band_id", using: :btree
  add_index "schedules", ["group_id"], name: "index_schedules_on_group_id", using: :btree
  add_index "schedules", ["room_id"], name: "index_schedules_on_room_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
