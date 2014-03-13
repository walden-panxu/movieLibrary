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

ActiveRecord::Schema.define(version: 20140301073753) do

  create_table "actors", force: true do |t|
    t.string "actorsName",    limit: 50
    t.date   "birthdate"
    t.string "actorsHonour"
    t.text   "actorsComment"
  end

  create_table "directors", force: true do |t|
    t.string "directorName",    null: false
    t.date   "birthdate"
    t.string "directorHonour"
    t.text   "directorComment"
  end

  create_table "moviecollects", force: true do |t|
    t.integer  "movieLibrary_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moviecomments", force: true do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.integer  "praiseScode"
    t.integer  "commentClass"
    t.integer  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movielibrarys", force: true do |t|
    t.string   "libraryName", limit: 100, default: "我的片库"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "movieName",        limit: 50,             null: false
    t.date     "shootingTime"
    t.datetime "screenTime"
    t.integer  "duration",                                null: false
    t.string   "movieHonour",      limit: 40
    t.string   "movieClass",                              null: false
    t.string   "movieNationality"
    t.string   "movieBill",                               null: false
    t.integer  "movieScore",                  default: 0
    t.text     "movieDescribe"
  end

  create_table "movies_actors", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "actor_id"
  end

  create_table "movies_directors", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "director_id"
  end

  create_table "users", force: true do |t|
    t.string   "userName",    limit: 50,  null: false
    t.string   "password",    limit: 30,  null: false
    t.integer  "gender"
    t.date     "birthdate"
    t.string   "address",     limit: 100
    t.string   "email",       limit: 50,  null: false
    t.string   "phoneNumber", limit: 12
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
