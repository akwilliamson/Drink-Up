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

ActiveRecord::Schema.define(version: 20140404175746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: true do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.string "mood"
    t.string "city"
    t.string "atmosphere"
    t.string "gender"
  end

  create_table "get_ups", force: true do |t|
    t.integer "drinks_id"
    t.integer "outfits_id"
  end

  create_table "outfits", force: true do |t|
    t.string "shirt"
    t.string "pants"
    t.string "jacket"
    t.string "socks"
    t.string "shoes"
    t.string "hat"
    t.string "glasses"
  end

end
