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

ActiveRecord::Schema.define(version: 20150612182905) do

  create_table "bands", force: :cascade do |t|
    t.string   "bandName",   limit: 255, null: false
    t.string   "bandPhone",  limit: 255, null: false
    t.integer  "genre_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "bands", ["genre_id"], name: "index_bands_on_genre_id", using: :btree
  add_index "bands", ["user_id"], name: "index_bands_on_user_id", using: :btree

  create_table "event_items", force: :cascade do |t|
    t.integer  "band_id",    limit: 4
    t.integer  "event_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "priority",   limit: 4
    t.datetime "time"
  end

  add_index "event_items", ["band_id"], name: "index_event_items_on_band_id", using: :btree
  add_index "event_items", ["event_id"], name: "index_event_items_on_event_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.datetime "eventStartTime",                       null: false
    t.integer  "venue_id",       limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "age",            limit: 4, default: 0
    t.integer  "ticket_id",      limit: 4
  end

  add_index "events", ["ticket_id"], name: "index_events_on_ticket_id", using: :btree
  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "genreDescription", limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "purchase",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",      limit: 255, null: false
    t.string   "firstName",  limit: 255, null: false
    t.string   "lastName",   limit: 255, null: false
    t.string   "password",   limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "venueName",  limit: 255, null: false
    t.string   "address",    limit: 255, null: false
    t.string   "venueCity",  limit: 255, null: false
    t.string   "venueState", limit: 255, null: false
    t.string   "venueZip",   limit: 255, null: false
    t.float    "latitude",   limit: 24,  null: false
    t.float    "longitude",  limit: 24,  null: false
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "venues", ["user_id"], name: "index_venues_on_user_id", using: :btree

  add_foreign_key "bands", "genres"
  add_foreign_key "bands", "users"
  add_foreign_key "event_items", "bands"
  add_foreign_key "event_items", "events"
  add_foreign_key "events", "tickets"
  add_foreign_key "events", "venues"
  add_foreign_key "venues", "users"
end
