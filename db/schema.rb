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

ActiveRecord::Schema.define(version: 20181212073459) do

  create_table "comics", force: :cascade do |t|
    t.string   "title"
    t.integer  "issue",      precision: 38
    t.string   "publisher"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "cpf",        null: false
    t.string   "contact",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["cpf"], name: "index_employees_on_cpf", unique: true

  create_table "employees_properties", id: false, force: :cascade do |t|
    t.integer "employee_id", precision: 38, null: false
    t.integer "property_id", precision: 38, null: false
  end

  add_index "employees_properties", ["employee_id", "property_id"], name: "i_emp_pro_emp_id_pro_id", unique: true

  create_table "maintenances", force: :cascade do |t|
    t.integer  "owner_id",    precision: 38,              null: false
    t.string   "title",                                   null: false
    t.text     "description",                default: ""
    t.integer  "status",      precision: 38, default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.text     "response",                   default: ""
  end

  add_index "maintenances", ["owner_id"], name: "index_maintenances_on_owner_id"

  create_table "phone_numbers", force: :cascade do |t|
    t.integer "user_id",      precision: 38, null: false
    t.string  "phone_number",                null: false
  end

  add_index "phone_numbers", ["user_id", "phone_number"], name: "i_pho_num_use_id_pho_num", unique: true

  create_table "properties", force: :cascade do |t|
    t.string   "name",                          default: "", null: false
    t.string   "postal_code",                                null: false
    t.string   "address",                                    null: false
    t.integer  "number",         precision: 38, default: 0
    t.string   "city",                                       null: false
    t.string   "state",                                      null: false
    t.integer  "proprietary_id", precision: 38,              null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "properties", ["address"], name: "index_properties_on_address"
  add_index "properties", ["city"], name: "index_properties_on_city"
  add_index "properties", ["postal_code"], name: "i_properties_postal_code"
  add_index "properties", ["proprietary_id"], name: "i_properties_proprietary_id"
  add_index "properties", ["state"], name: "index_properties_on_state"

  create_table "rooms", force: :cascade do |t|
    t.integer  "number",      precision: 38
    t.integer  "property_id", precision: 38, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "owner_id",    precision: 38,             null: false
    t.string   "title",                                  null: false
    t.string   "description",                            null: false
    t.integer  "delegated",   precision: 38
    t.integer  "status",      precision: 38, default: 0, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "tasks", ["owner_id"], name: "index_tasks_on_owner_id"
  add_index "tasks", ["title"], name: "index_tasks_on_title"

  create_table "users", force: :cascade do |t|
    t.string   "name",                                  default: "", null: false
    t.string   "cpf",                                   default: "", null: false
    t.integer  "user_type",              precision: 38, default: 0,  null: false
    t.string   "email",                                 default: "", null: false
    t.string   "encrypted_password",                    default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "users", ["cpf"], name: "index_users_on_cpf", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name"
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

  create_table "vacancies", force: :cascade do |t|
    t.integer  "value",      precision: 38, default: 0
    t.integer  "status",     precision: 38, default: 0
    t.integer  "room_id",    precision: 38,             null: false
    t.integer  "user_id",    precision: 38
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "vacancies", ["room_id"], name: "index_vacancies_on_room_id"
  add_index "vacancies", ["user_id"], name: "index_vacancies_on_user_id"

  add_foreign_key "employees_properties", "employees"
  add_foreign_key "employees_properties", "properties"
  add_foreign_key "maintenances", "users", column: "owner_id", on_delete: :cascade
  add_foreign_key "phone_numbers", "users", on_delete: :cascade
  add_foreign_key "properties", "users", column: "proprietary_id"
  add_foreign_key "rooms", "properties", on_delete: :cascade
  add_foreign_key "tasks", "users", column: "owner_id", on_delete: :cascade
  add_foreign_key "vacancies", "rooms", on_delete: :cascade
  add_foreign_key "vacancies", "users", on_delete: :cascade
end
