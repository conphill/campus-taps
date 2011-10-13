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

ActiveRecord::Schema.define(:version => 20111013174936) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "bars", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id"
    t.string   "email"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "permalink"
    t.text     "specials"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "bars", ["permalink"], :name => "index_bars_on_permalink"
  add_index "bars", ["state_id"], :name => "index_bars_on_state_id"

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.integer  "region_id"
    t.integer  "state_id"
    t.string   "zip"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  add_index "colleges", ["permalink"], :name => "index_colleges_on_permalink"
  add_index "colleges", ["region_id"], :name => "index_colleges_on_region_id"
  add_index "colleges", ["state_id"], :name => "index_colleges_on_state_id"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "flyer_file_name"
    t.string   "flyer_content_type"
    t.integer  "flyer_file_size"
    t.datetime "flyer_updated_at"
    t.integer  "bar_id"
  end

  add_index "events", ["bar_id"], :name => "index_events_on_bar_id"

  create_table "managers", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bar_id"
  end

  add_index "managers", ["bar_id"], :name => "index_managers_on_bar_id"
  add_index "managers", ["email"], :name => "index_managers_on_email", :unique => true
  add_index "managers", ["reset_password_token"], :name => "index_managers_on_reset_password_token", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "admin_id"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
  end

  create_table "product_categories", :force => true do |t|
    t.string   "CreateProductCategories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "brand"
    t.string   "name"
    t.decimal  "price",               :precision => 10, :scale => 0
    t.integer  "product_category_id"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  add_index "regions", ["state_id"], :name => "index_regions_on_state_id"

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "hours"
    t.integer  "region_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  add_index "restaurants", ["permalink"], :name => "index_restaurants_on_permalink"
  add_index "restaurants", ["region_id"], :name => "index_restaurants_on_region_id"

  create_table "reviews", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
  end

  add_index "reviews", ["reviewable_id", "reviewable_type"], :name => "index_reviews_on_reviewable_id_and_reviewable_type"

  create_table "states", :force => true do |t|
    t.string "name"
    t.string "state_abbr"
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id"
    t.string   "email"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "permalink"
  end

  add_index "stores", ["permalink"], :name => "index_stores_on_permalink"
  add_index "stores", ["state_id"], :name => "index_stores_on_state_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "facebook_id"
    t.string   "school_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
