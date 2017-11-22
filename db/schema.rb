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

ActiveRecord::Schema.define(version: 20171101140327) do

  create_table "master_class_class_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "master_class_id"
    t.integer  "master_class_subject_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "master_class_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "status",            default: 0
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "slot_count"
    t.integer  "master_class_id"
    t.integer  "master_subject_id"
    t.integer  "master_course_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "master_classes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_course_schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.integer  "slot"
    t.integer  "master_class_subject_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "master_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "status",      default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "mail_sended", default: false
  end

  create_table "master_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.integer  "creadit"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "code"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "name"
    t.integer  "status",                               default: 0
    t.boolean  "is_admin",                             default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "email",                                default: "",    null: false
    t.string   "encrypted_password",                   default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "phone_number"
    t.string   "workplace"
    t.text     "story",                  limit: 65535
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
