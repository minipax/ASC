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

ActiveRecord::Schema.define(:version => 20111001192045) do

  create_table "choices", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "multiple_choice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choices", ["multiple_choice_id"], :name => "index_choices_on_multiple_choice_id"

  create_table "fill_in_blanks", :force => true do |t|
    t.string   "name"
    t.text     "subject"
    t.integer  "social_contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fill_in_blanks", ["social_contract_id"], :name => "index_fill_in_blanks_on_social_contract_id"

  create_table "groups", :force => true do |t|
    t.string   "apiKey"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multiple_choices", :force => true do |t|
    t.string   "question"
    t.integer  "social_contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "multiple_choices", ["social_contract_id"], :name => "index_multiple_choices_on_social_contract_id"

  create_table "referendums", :force => true do |t|
    t.string   "question"
    t.integer  "social_contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referendums", ["social_contract_id"], :name => "index_referendums_on_social_contract_id"

  create_table "social_contracts", :force => true do |t|
    t.text     "description"
    t.text     "conclusion"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_groups", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

end
