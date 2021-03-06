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

ActiveRecord::Schema.define(version: 20170320225039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bar_translations", force: :cascade do |t|
    t.integer  "bar_id",     null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["bar_id"], name: "index_bar_translations_on_bar_id", using: :btree
    t.index ["locale"], name: "index_bar_translations_on_locale", using: :btree
  end

  create_table "bars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foo_translations", force: :cascade do |t|
    t.integer  "foo_id",     null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["foo_id"], name: "index_foo_translations_on_foo_id", using: :btree
    t.index ["locale"], name: "index_foo_translations_on_locale", using: :btree
  end

  create_table "foos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foos_bars", force: :cascade do |t|
    t.integer  "foo_id"
    t.integer  "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_foos_bars_on_bar_id", using: :btree
    t.index ["foo_id"], name: "index_foos_bars_on_foo_id", using: :btree
  end

end
