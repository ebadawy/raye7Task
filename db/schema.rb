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

ActiveRecord::Schema.define(version: 20160903211920) do

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "phone_number"
    t.integer  "home_place_id"
    t.integer  "work_place_id"
    t.integer  "group_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["home_place_id", "work_place_id", "group_id"], name: "index_users_on_home_place_id_and_work_place_id_and_group_id", using: :btree
  end

end
