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

ActiveRecord::Schema.define(version: 20141231034655) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "billing_address", limit: 255
    t.string   "billing_contact", limit: 255
    t.string   "city",            limit: 255
    t.string   "state",           limit: 255
    t.string   "zip",             limit: 255
    t.string   "phone",           limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "type",            limit: 255
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip",        limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "flows", force: :cascade do |t|
    t.string   "flow_type",    limit: 255
    t.string   "assignee",     limit: 255
    t.date     "received_at"
    t.date     "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id",   limit: 4
  end

  add_index "flows", ["service_id"], name: "index_flows_on_service_id", using: :btree

  create_table "leases", force: :cascade do |t|
    t.string   "lease_number", limit: 255
    t.integer  "lessee",       limit: 4
    t.string   "description",  limit: 255
    t.text     "comments",     limit: 65535
    t.integer  "user_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessees", force: :cascade do |t|
    t.string   "last_name",  limit: 255
    t.string   "first_name", limit: 255
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip",        limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.string   "company",    limit: 255
    t.string   "bus_phone",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "service_id", limit: 4
  end

  create_table "parcels", force: :cascade do |t|
    t.string   "tax_map",    limit: 255
    t.string   "tax_parcel", limit: 255
    t.integer  "deed_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id", limit: 4
  end

  create_table "service_requests", force: :cascade do |t|
    t.string   "to_state",   limit: 255,   null: false
    t.text     "metadata",   limit: 65535
    t.integer  "sort_key",   limit: 4,     null: false
    t.integer  "service_id", limit: 4,     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_requests", ["service_id"], name: "index_service_requests_on_service_id", using: :btree
  add_index "service_requests", ["sort_key", "service_id"], name: "index_service_requests_on_sort_key_and_service_id", unique: true, using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "county",             limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.date     "requested_delivery"
    t.string   "lease_file",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lease_id",           limit: 4
    t.integer  "lessee_id",          limit: 4
    t.integer  "flow_id",            limit: 4
    t.string   "lease_number",       limit: 255
    t.string   "state",              limit: 255
    t.string   "description",        limit: 255
    t.integer  "parcel_id",          limit: 4
  end

  create_table "services_users", id: false, force: :cascade do |t|
    t.integer "service_id", limit: 4
    t.integer "user_id",    limit: 4
  end

  add_index "services_users", ["service_id"], name: "index_services_users_on_service_id", using: :btree
  add_index "services_users", ["user_id"], name: "index_services_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role",                   limit: 4
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "name",                   limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "phone",                  limit: 255
    t.string   "type",                   limit: 255
    t.integer  "service_id",             limit: 4
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
