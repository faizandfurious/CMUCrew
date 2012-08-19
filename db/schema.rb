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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120819142103) do

  create_table "boats", :force => true do |t|
    t.string   "name"
    t.string   "boat_type"
    t.string   "color"
    t.string   "model"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fundraiser_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fundraisers", :force => true do |t|
    t.string   "name"
    t.integer  "fundraiser_type_id"
    t.date     "event_date"
    t.string   "location"
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "capacity"
  end

  create_table "lineups", :force => true do |t|
    t.integer  "boat_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "practice_lineups", :force => true do |t|
    t.integer  "practice_id"
    t.integer  "lineup_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "practices", :force => true do |t|
    t.date     "date"
    t.string   "time"
    t.integer  "workout_type_id"
    t.string   "location"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "race_lineups", :force => true do |t|
    t.integer  "race_id"
    t.integer  "lineup_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rowers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "weight"
    t.integer  "height"
    t.string   "rowing_side"
    t.string   "email"
    t.string   "phone"
    t.string   "year"
    t.string   "major"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_fundraisers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "fundraiser_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "user_lineups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "lineup_id"
    t.string   "seat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "weight"
    t.integer  "height"
    t.string   "rowing_side"
    t.string   "phone"
    t.string   "year"
    t.string   "major"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.integer  "roles_mask"
    t.integer  "fundraiser_count"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "workout_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
