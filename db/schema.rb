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

ActiveRecord::Schema.define(:version => 20120124075326) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_references", :force => true do |t|
    t.string   "email_address"
    t.integer  "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",              :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "homePreview"
    t.string   "smallPreview"
    t.string   "tinyPreview"
    t.string   "largePreview"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "tinies", :force => true do |t|
    t.string   "small_image_url"
    t.string   "large_image_url"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tinyPreview"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
