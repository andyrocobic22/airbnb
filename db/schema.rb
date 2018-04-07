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

ActiveRecord::Schema.define(version: 20180407154657) do

  create_table "add_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "add_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "country",     null: false
    t.integer  "mail_number", null: false
    t.integer  "prefecture",  null: false
    t.string   "city",        null: false
    t.string   "city_detail", null: false
    t.integer  "room_number", null: false
    t.integer  "room_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "amenity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bedrooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",         null: false
    t.integer  "bed_room_number", null: false
    t.integer  "double"
    t.integer  "queen"
    t.integer  "single"
    t.integer  "king"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "beforehands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "beforehands"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "buildings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "building",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_buildings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category_id", null: false
    t.integer  "building_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "house_rules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "kid",                       default: false
    t.text     "kid_reason",  limit: 65535
    t.boolean  "baby",                      default: false
    t.text     "baby_reason", limit: 65535
    t.boolean  "pet",                       default: false
    t.boolean  "smoke",                     default: false
    t.boolean  "event_party",               default: false
    t.integer  "room_id",                                   null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image_url",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_add_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",                      null: false
    t.boolean  "add_order_id", default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "room_amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",                    null: false
    t.boolean  "amenity_id", default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "room_beforehands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",                       null: false
    t.boolean  "beforehand_id", default: false, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "room_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",    null: false
    t.integer  "image_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_situations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",                      null: false
    t.boolean  "add_order_id", default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "room_spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id",                    null: false
    t.boolean  "space_id",   default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category"
    t.integer  "building"
    t.integer  "room_type_id"
    t.integer  "guest_room"
    t.integer  "capacity"
    t.integer  "bed_number"
    t.integer  "bath_room"
    t.text     "overview",       limit: 65535
    t.text     "house",          limit: 65535
    t.text     "range",          limit: 65535
    t.text     "communication",  limit: 65535
    t.text     "others",         limit: 65535
    t.text     "area",           limit: 65535
    t.text     "trans",          limit: 65535
    t.integer  "ever"
    t.integer  "frequency"
    t.integer  "deadline"
    t.integer  "checkin"
    t.integer  "checkout"
    t.integer  "limit"
    t.integer  "start"
    t.integer  "end"
    t.integer  "charge_setting"
    t.integer  "min_charge"
    t.integer  "basic_charge"
    t.integer  "max_charge"
    t.integer  "currency"
    t.integer  "special"
    t.integer  "week"
    t.integer  "mounth"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "situations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "situation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "space"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
