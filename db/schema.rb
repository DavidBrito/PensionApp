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

ActiveRecord::Schema.define(version: 20181123041503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "cpf",        null: false
    t.string   "contact",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["cpf"], name: "index_employees_on_cpf", unique: true, using: :btree

  create_table "maintenances", force: :cascade do |t|
    t.integer  "owner_id",                 null: false
    t.string   "title",                    null: false
    t.text     "description", default: ""
    t.integer  "status",      default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "maintenances", ["owner_id"], name: "index_maintenances_on_owner_id", using: :btree

  create_table "phone_numbers", force: :cascade do |t|
    t.integer "user_id",      null: false
    t.string  "phone_number", null: false
  end

  add_index "phone_numbers", ["user_id", "phone_number"], name: "index_phone_numbers_on_user_id_and_phone_number", unique: true, using: :btree

  create_table "properties", force: :cascade do |t|
    t.string   "postal_code",    null: false
    t.string   "address",        null: false
    t.integer  "number"
    t.string   "city",           null: false
    t.string   "state",          null: false
    t.integer  "proprietary_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "properties", ["address"], name: "index_properties_on_address", using: :btree
  add_index "properties", ["city"], name: "index_properties_on_city", using: :btree
  add_index "properties", ["postal_code"], name: "index_properties_on_postal_code", using: :btree
  add_index "properties", ["proprietary_id"], name: "index_properties_on_proprietary_id", using: :btree
  add_index "properties", ["state"], name: "index_properties_on_state", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.integer  "number"
    t.integer  "property_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "owner_id",                null: false
    t.string   "title",                   null: false
    t.string   "description",             null: false
    t.integer  "delegated"
    t.integer  "status",      default: 0, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "tasks", ["owner_id"], name: "index_tasks_on_owner_id", using: :btree
  add_index "tasks", ["title"], name: "index_tasks_on_title", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "cpf",                    default: "", null: false
    t.integer  "user_type",              default: 0,  null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["cpf"], name: "index_users_on_cpf", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vacancies", force: :cascade do |t|
    t.decimal  "value",            default: 0.0
    t.integer  "status",           default: 0
    t.integer  "room_id",                        null: false
    t.integer  "vacancy_owner_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "vacancies", ["room_id"], name: "index_vacancies_on_room_id", using: :btree
  add_index "vacancies", ["vacancy_owner_id"], name: "index_vacancies_on_vacancy_owner_id", using: :btree

  add_foreign_key "maintenances", "users", column: "owner_id"
  add_foreign_key "phone_numbers", "users"
  add_foreign_key "properties", "users", column: "proprietary_id"
  add_foreign_key "rooms", "properties"
  add_foreign_key "tasks", "users", column: "owner_id"
  add_foreign_key "vacancies", "rooms"
  add_foreign_key "vacancies", "users", column: "vacancy_owner_id"
end
