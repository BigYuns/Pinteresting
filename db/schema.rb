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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150603200038) do
=======
ActiveRecord::Schema.define(version: 20150604202813) do
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "public"
<<<<<<< HEAD
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
=======
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
  end

  add_index "boards", ["user_id"], name: "index_boards_on_user_id"

  create_table "pins", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.integer  "likes"
<<<<<<< HEAD
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "board_id"
  end

=======
    t.integer  "user_id"
    t.integer  "board_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "subtitle"
    t.string   "url2"
    t.string   "url3"
    t.string   "url4"
  end

  add_index "pins", ["board_id"], name: "index_pins_on_board_id"
  add_index "pins", ["user_id"], name: "index_pins_on_user_id"

>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
