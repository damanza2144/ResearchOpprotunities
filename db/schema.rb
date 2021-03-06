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

ActiveRecord::Schema.define(:version => 20121214002015) do

  create_table "advisors", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
  end

  create_table "researches", :force => true do |t|
    t.string   "title"
    t.string   "contact_info"
    t.string   "academic_unit"
    t.string   "work_period"
    t.string   "academic_level"
    t.string   "gpa"
    t.text     "class_required"
    t.text     "requirements"
    t.text     "description"
    t.date     "application_deadline"
    t.boolean  "paid"
    t.string   "unmjobs_number"
    t.string   "unmjobs_name"
    t.string   "student_research_assistant"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.boolean  "open"
    t.boolean  "active"
    t.boolean  "closed"
    t.integer  "advisor_id"
  end

  create_table "students", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "minor"
    t.string   "major"
    t.decimal  "GPA"
    t.text     "interests"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "research_id"
  end

  create_table "users", :force => true do |t|
    t.string "email", :default => "", :null => false
    t.string "encrypted_password", :default => "", :null => false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
	t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "student_id"
    t.integer "advisor_id"
    t.string "roll_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
