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

ActiveRecord::Schema.define(version: 20181220201214) do

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.boolean "gumballs"
    t.string "color"
    t.boolean "organic"
    t.boolean "poison"
    t.integer "truck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["truck_id"], name: "index_flavors_on_truck_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string "name"
    t.integer "wheels"
    t.boolean "front"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
