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

ActiveRecord::Schema.define(version: 20190612074435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "section_id"
    t.integer  "kitchen_id"
    t.string   "comment"
    t.integer  "price"
    t.integer  "order"
    t.text     "features",    default: [],              array: true
    t.integer  "weight"
    t.string   "thumb_image"
    t.text     "images",      default: [],              array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["kitchen_id"], name: "index_items_on_kitchen_id", using: :btree
    t.index ["section_id"], name: "index_items_on_section_id", using: :btree
  end

  create_table "kitchens", force: :cascade do |t|
    t.string   "name"
    t.string   "comment"
    t.float    "lat"
    t.float    "lon"
    t.string   "start_time"
    t.string   "close_time"
    t.integer  "order"
    t.boolean  "default"
    t.string   "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.string   "comment"
    t.integer  "kitchen_id"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kitchen_id"], name: "index_sections_on_kitchen_id", using: :btree
  end

end
