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

ActiveRecord::Schema.define(version: 20160730060126) do

# Could not dump table "categories" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "category_post_connections", force: :cascade do |t|
    t.string   "post_id"
    t.string   "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "comments" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "posts" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "phone"
    t.integer "age"
    t.string  "nickname"
    t.string  "email"
    t.string  "interest"
    t.string  "password_digest"
  end

  create_table "votes", force: :cascade do |t|
    t.boolean  "vote"
    t.integer  "user_id"
    t.string   "voteable_type"
    t.integer  "voteable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
