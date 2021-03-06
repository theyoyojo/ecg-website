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

ActiveRecord::Schema.define(version: 20180227170012) do

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.date "published_on"
    t.string "csv_tags"
    t.string "text_link"
    t.string "text_link_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "grad_year"
    t.string "degree"
    t.string "position"
    t.string "email"
    t.string "linkedin"
    t.string "github"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "start_year"
    t.string "csv_tags"
    t.string "short_desc"
    t.string "long_desc"
    t.string "website"
    t.string "github"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
