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

ActiveRecord::Schema.define(version: 20140124160645) do

  create_table "fantasy_players", force: true do |t|
    t.integer  "user_id",         null: false
    t.integer  "lcs_player_id",   null: false
    t.integer  "fantasy_team_id", null: false
    t.integer  "week_id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_teams", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "week_id",    null: false
    t.integer  "top"
    t.integer  "jungle"
    t.integer  "mid"
    t.integer  "adc"
    t.integer  "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lcs_games", force: true do |t|
    t.integer  "week_id",         null: false
    t.integer  "winning_team_id", null: false
    t.integer  "losing_team_id",  null: false
    t.integer  "length",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lcs_players", force: true do |t|
    t.integer  "lcs_team_id", null: false
    t.string   "role",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lcs_teams", force: true do |t|
    t.string   "top",        null: false
    t.string   "jungle",     null: false
    t.string   "mid",        null: false
    t.string   "adc",        null: false
    t.string   "support",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_game_results", force: true do |t|
    t.integer  "game_id",           null: false
    t.integer  "lcs_player_id",     null: false
    t.integer  "fantasy_player_id", null: false
    t.integer  "kills",             null: false
    t.integer  "deaths",            null: false
    t.integer  "assists",           null: false
    t.integer  "cs",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weeks", force: true do |t|
    t.datetime "start_date", null: false
    t.datetime "end_date",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
