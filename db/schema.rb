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

ActiveRecord::Schema.define(version: 20170114041653) do

  create_table "master_class_course_teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "master_class_code"
    t.string   "tbluser_code"
    t.string   "master_session_code"
    t.integer  "credits"
    t.string   "room"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "master_classes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_course_schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.datetime "date"
    t.integer  "slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tblusers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "User_ID"
    t.string   "Username"
    t.string   "Salt"
    t.string   "Email"
    t.boolean  "Enabled"
    t.string   "User_Code"
    t.string   "Avatar"
    t.string   "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
