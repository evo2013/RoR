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

ActiveRecord::Schema.define(version: 20131212032333) do

  create_table "articles", force: true do |t|
    t.integer  "celebrity_id"
    t.string   "url"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["celebrity_id"], name: "index_articles_on_celebrity_id"

  create_table "celebrities", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "occupation"
    t.text     "bio"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebooks", force: true do |t|
    t.integer  "celebrity_id"
    t.integer  "facebook_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facebooks", ["celebrity_id"], name: "index_facebooks_on_celebrity_id"

  create_table "flickrs", force: true do |t|
    t.integer  "celebrity_id"
    t.string   "flickr_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flickrs", ["celebrity_id"], name: "index_flickrs_on_celebrity_id"

  create_table "instagrams", force: true do |t|
    t.integer  "celebrity_id"
    t.string   "instagram_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instagrams", ["celebrity_id"], name: "index_instagrams_on_celebrity_id"

  create_table "posts", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.integer  "celebrity_id"
    t.integer  "twitter_id"
    t.string   "tweets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["celebrity_id"], name: "index_tweets_on_celebrity_id"

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.integer  "celebrity_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["celebrity_id"], name: "index_videos_on_celebrity_id"

end
