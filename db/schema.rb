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

ActiveRecord::Schema.define(version: 20140317133856) do

  create_table "favoritepizzas", force: true do |t|
    t.integer  "user_id"
    t.integer  "pizza_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pizzas", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "pizzatoppings", force: true do |t|
    t.integer  "topping_id"
    t.integer  "pizza_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toppings", force: true do |t|
    t.string   "name"
    t.float    "amount"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "userlevel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
