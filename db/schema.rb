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

ActiveRecord::Schema.define(:version => 20111009215151) do

  create_table "catwalks", :force => true do |t|
    t.string   "catname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "catpic_file_name"
    t.string   "catpic_content_type"
    t.integer  "catpic_file_size"
    t.datetime "catpic_updated_at"
    t.integer  "user_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avtar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "message"
    t.float    "cat1x",               :default => 100.0
    t.float    "cat1y",               :default => 100.0
    t.float    "cat1h",               :default => 150.0
    t.float    "cat1w",               :default => 115.0
    t.float    "cat2x",               :default => 100.0
    t.float    "cat2y",               :default => 100.0
    t.float    "cat2h",               :default => 150.0
    t.float    "cat2w",               :default => 115.0
    t.float    "cat3x",               :default => 100.0
    t.float    "cat3y",               :default => 100.0
    t.float    "cat3h",               :default => 150.0
    t.float    "cat3w",               :default => 115.0
    t.float    "hat1x",               :default => 100.0
    t.float    "hat1y",               :default => 100.0
    t.float    "hat1h",               :default => 150.0
    t.float    "hat1w",               :default => 115.0
    t.float    "hat2x",               :default => 100.0
    t.float    "hat2y",               :default => 100.0
    t.float    "hat2h",               :default => 150.0
    t.float    "hat2w",               :default => 115.0
    t.float    "hat3x",               :default => 100.0
    t.float    "hat3y",               :default => 100.0
    t.float    "hat3h",               :default => 150.0
    t.float    "hat3w",               :default => 115.0
    t.integer  "user_id"
    t.integer  "cat1move",            :default => 0
    t.integer  "cat2move",            :default => 0
    t.integer  "cat3move",            :default => 0
    t.integer  "hat1move",            :default => 0
    t.integer  "hat2move",            :default => 0
    t.integer  "hat3move",            :default => 0
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "token"
  end

  create_table "votes", :force => true do |t|
    t.boolean  "vote",          :default => false
    t.integer  "voteable_id",                      :null => false
    t.string   "voteable_type",                    :null => false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["voteable_id", "voteable_type"], :name => "fk_voteables"
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], :name => "uniq_one_vote_only", :unique => true
  add_index "votes", ["voter_id", "voter_type"], :name => "fk_voters"

end
