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

ActiveRecord::Schema.define(version: 20180311073404) do

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "room_name",         limit: 65535
    t.text     "room_place",        limit: 65535
    t.integer  "guest_number"
    t.integer  "bed_room"
    t.integer  "bath_room"
    t.text     "room_introduce",    limit: 65535
    t.text     "bed_type_1",        limit: 65535
    t.text     "bed_type_2",        limit: 65535
    t.text     "bed_type_3",        limit: 65535
    t.text     "house_rule",        limit: 65535
    t.text     "house_rule_detail", limit: 65535
    t.text     "cancel_rank",       limit: 65535
    t.text     "cancel_text",       limit: 65535
    t.integer  "user_id"
    t.datetime "crated_at",                       null: false
    t.datetime "updated_at",                      null: false
    t.text     "images",            limit: 65535
    t.text     "room_category",     limit: 65535
    t.integer  "rate"
    t.integer  "price"
    t.text     "host_rank",         limit: 65535
    t.text     "cancel_free",       limit: 65535
  end

end
