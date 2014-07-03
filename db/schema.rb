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

ActiveRecord::Schema.define(version: 20140703022619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "followers", force: true do |t|
    t.integer "user_id"
    t.integer "friend_id"
  end

  create_table "genres", force: true do |t|
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres_works", force: true do |t|
    t.integer "genre_id"
    t.integer "work_id"
  end

  create_table "likes", force: true do |t|
    t.integer  "likes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "work_id"
  end

  create_table "users", force: true do |t|
    t.string  "username"
    t.text    "avatar"
    t.string  "email"
    t.string  "occupation"
    t.string  "location"
    t.string  "password_digest"
    t.boolean "is_admin"
  end

  create_table "works", force: true do |t|
    t.string   "title"
    t.text     "image"
    t.string   "tags"
    t.text     "desription"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "likes"
  end

end
