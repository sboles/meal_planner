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

ActiveRecord::Schema.define(:version => 20111112153606) do

  create_table "meal_plan_meals", :force => true do |t|
    t.text     "custom_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "meal_id"
    t.integer  "meal_plan_id"
    t.string   "day"
    t.string   "meal_time"
  end

  create_table "meal_plans", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "starting_at"
  end

  create_table "meal_time_tags", :force => true do |t|
    t.integer  "meal_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",      :default => true
  end

  create_table "tag_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tag_type_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
