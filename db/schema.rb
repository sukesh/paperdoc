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

ActiveRecord::Schema.define(:version => 20110608133455) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "user_id"
    t.integer  "institute_id"
    t.text     "details"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_participants", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "user_id"
    t.string   "type"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institute_members", :force => true do |t|
    t.integer  "institute_id"
    t.integer  "user_id"
    t.string   "official_identification"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", :force => true do |t|
    t.string   "name"
    t.text     "details"
    t.integer  "user_id"
    t.string   "emblem"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "updates", :force => true do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "activity_id"
    t.string   "type"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploadedfiles", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "activity_id"
    t.string   "time"
    t.string   "permission"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_file_name"
    t.string   "name_content_type"
    t.integer  "name_file_size"
    t.datetime "name_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "usertype"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
  end

end
