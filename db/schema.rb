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

ActiveRecord::Schema.define(:version => 20130615193851) do

  create_table "images", :force => true do |t|
    t.integer  "product_id"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "images", ["product_id"], :name => "index_images_on_product_id"

  create_table "orders", :force => true do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.integer  "telephone"
    t.integer  "qty"
    t.datetime "date"
    t.string   "l_price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "user_id"
    t.string   "dt"
    t.string   "desc"
    t.string   "benefits"
    t.string   "estimated_rsp"
    t.string   "l_price"
    t.string   "benefits_clients"
    t.string   "photos"
    t.string   "videos"
    t.string   "sr2l"
    t.string   "refp_number"
    t.string   "fixed_costs"
    t.string   "gross_margin"
    t.string   "bp_link"
    t.string   "pp_link"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.string   "fb"
    t.string   "gplus"
    t.string   "linked"
    t.string   "twit"
    t.date     "birth_date"
    t.string   "nationality"
    t.string   "passport"
    t.string   "ss"
    t.string   "address"
    t.string   "image"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "producer",        :default => false
  end

end
