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

ActiveRecord::Schema.define(version: 2019_07_10_153142) do

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.date "expireDate"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foundations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "city"
    t.string "address"
    t.bigint "phone"
    t.time "hourEntry"
    t.time "hourExit"
    t.boolean "isActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string "idQualifiedEntity"
    t.string "idQualifyingEntity"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "city"
    t.string "address"
    t.bigint "phone"
    t.time "hourEntry"
    t.time "hourExit"
    t.string "question"
    t.boolean "isActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitations", force: :cascade do |t|
    t.string "idApplicant"
    t.string "idApplied"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string "idRestaurant"
    t.string "idFood"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
