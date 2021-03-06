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

ActiveRecord::Schema.define(version: 20141019131146) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "flights", force: true do |t|
    t.string   "departure_code"
    t.string   "arrival_code"
    t.integer  "best_price"
    t.integer  "avg_price"
    t.string   "best_travel_month"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  add_index "flights", ["location_id"], name: "index_flights_on_location_id"

  create_table "internets", force: true do |t|
    t.string   "ISP_name"
    t.string   "data_type"
    t.integer  "down_speed"
    t.integer  "up_speed"
    t.integer  "cost_per_mb"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  add_index "internets", ["location_id"], name: "index_internets_on_location_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "ctry",                limit: 2
    t.text     "description"
    t.string   "map_link"
    t.decimal  "monthly_cost",                  precision: 10, scale: 2
    t.string   "best_flight_month"
    t.date     "low_season_startdt"
    t.date     "low_season_enddt"
    t.date     "high_season_startdt"
    t.date     "high_season_enddt"
    t.decimal  "avg_daily_hrs_sun",             precision: 3,  scale: 1
    t.integer  "avg_temp"
    t.text     "internet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id"
  end

  add_index "locations", ["region_id"], name: "index_locations_on_region_id"

  create_table "lodgings", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "lodging_type"
    t.integer  "beds"
    t.integer  "bedrooms"
    t.integer  "capacity"
    t.decimal  "price_per_night", precision: 7, scale: 2
    t.boolean  "warning_flag",                            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  add_index "lodgings", ["location_id"], name: "index_lodgings_on_location_id"

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
