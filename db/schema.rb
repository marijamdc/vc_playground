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

ActiveRecord::Schema.define(version: 20181201211440) do

  create_table "fonds", force: :cascade do |t|
    t.string "name", null: false
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.string "name", null: false
    t.integer "minimum"
    t.integer "maximum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_fond_sectors", force: :cascade do |t|
    t.integer "fond_id", null: false
    t.integer "sector_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fond_id"], name: "index_table_fond_sectors_on_fond_id"
    t.index ["sector_id"], name: "index_table_fond_sectors_on_sector_id"
  end

end