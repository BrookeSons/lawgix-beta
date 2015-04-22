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

ActiveRecord::Schema.define(version: 20150422021752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "billing_address"
    t.string   "billing_contact"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "type"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deed_title_abstracts", id: false, force: :cascade do |t|
    t.integer "deed_id"
    t.integer "title_abstract_id"
  end

  add_index "deed_title_abstracts", ["deed_id"], name: "index_deed_title_abstracts_on_deed_id", using: :btree
  add_index "deed_title_abstracts", ["title_abstract_id"], name: "index_deed_title_abstracts_on_title_abstract_id", using: :btree

  create_table "deeds", force: :cascade do |t|
    t.string   "db"
    t.string   "db_page"
    t.date     "d_date"
    t.string   "grantor"
    t.string   "grantee"
    t.string   "d_type"
    t.text     "comments"
    t.string   "d_image"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "title_abstract_id"
    t.string   "exceptions"
    t.string   "gtor_status"
    t.string   "gtee_status"
    t.string   "acreage"
    t.string   "description"
  end

  add_index "deeds", ["title_abstract_id"], name: "index_deeds_on_title_abstract_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.string   "file_type"
    t.string   "document_path"
    t.string   "url"
    t.integer  "user_id"
    t.integer  "service_id"
    t.integer  "lease_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "file_name"
    t.string   "doc_type"
    t.text     "doc_comment"
    t.string   "doc"
    t.string   "groupdocs_guid"
    t.text     "groupdocs_thumbnail"
    t.integer  "deed_id"
    t.integer  "title_abstract_id"
  end

  add_index "documents", ["deed_id"], name: "index_documents_on_deed_id", using: :btree
  add_index "documents", ["title_abstract_id"], name: "index_documents_on_title_abstract_id", using: :btree

  create_table "flows", force: :cascade do |t|
    t.string   "flow_type"
    t.string   "assignee"
    t.date     "received_at"
    t.date     "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id"
  end

  add_index "flows", ["service_id"], name: "index_flows_on_service_id", using: :btree

  create_table "lawfirms", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leases", force: :cascade do |t|
    t.string   "lease_number"
    t.integer  "lessee"
    t.string   "description"
    t.text     "comments"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id"
    t.string   "county"
    t.string   "state"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  add_index "leases", ["service_id"], name: "index_leases_on_service_id", using: :btree

  create_table "lessees", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.string   "company"
    t.string   "bus_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
    t.integer  "lease_id"
  end

  add_index "lessees", ["lease_id"], name: "index_lessees_on_lease_id", using: :btree

  create_table "parcels", force: :cascade do |t|
    t.string   "tax_map"
    t.string   "tax_parcel"
    t.integer  "deed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id"
    t.string   "county"
    t.integer  "lease_id"
  end

  add_index "parcels", ["lease_id"], name: "index_parcels_on_lease_id", using: :btree

  create_table "parcels_title_abstracts", id: false, force: :cascade do |t|
    t.integer "parcels_id"
    t.integer "title_abstracts_id"
  end

  add_index "parcels_title_abstracts", ["parcels_id"], name: "index_parcels_title_abstracts_on_parcels_id", using: :btree
  add_index "parcels_title_abstracts", ["title_abstracts_id"], name: "index_parcels_title_abstracts_on_title_abstracts_id", using: :btree

  create_table "service_transitions", force: :cascade do |t|
    t.string   "to_state",   null: false
    t.text     "metadata"
    t.integer  "sort_key",   null: false
    t.integer  "service_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_transitions", ["service_id"], name: "index_service_transitions_on_service_id", using: :btree
  add_index "service_transitions", ["sort_key", "service_id"], name: "index_service_transitions_on_sort_key_and_service_id", unique: true, using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "county"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "requested_delivery"
    t.string   "lease_file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lease_number"
    t.string   "state"
    t.string   "description"
    t.string   "serial_flows"
    t.string   "a_servicer"
    t.string   "o_servicer"
    t.string   "c_servicer"
    t.string   "l_servicer"
  end

  add_index "services", ["state"], name: "index_services_on_state", using: :btree

  create_table "services_users", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "user_id"
  end

  add_index "services_users", ["service_id"], name: "index_services_users_on_service_id", using: :btree
  add_index "services_users", ["user_id"], name: "index_services_users_on_user_id", using: :btree

  create_table "title_abstracts", force: :cascade do |t|
    t.string   "name"
    t.date     "due_date"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "parcel_id"
  end

  add_index "title_abstracts", ["parcel_id"], name: "index_title_abstracts_on_parcel_id", using: :btree

  create_table "title_abstracts_users", id: false, force: :cascade do |t|
    t.integer "abstractor_id"
    t.integer "title_abstract_id"
  end

  add_index "title_abstracts_users", ["abstractor_id"], name: "index_title_abstracts_users_on_abstractor_id", using: :btree
  add_index "title_abstracts_users", ["title_abstract_id"], name: "index_title_abstracts_users_on_title_abstract_id", using: :btree

  create_table "user_documents", id: false, force: :cascade do |t|
    t.integer "document_id"
    t.integer "user_id"
  end

  add_index "user_documents", ["document_id"], name: "index_user_documents_on_document_id", using: :btree
  add_index "user_documents", ["user_id"], name: "index_user_documents_on_user_id", using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "type"
    t.integer  "service_id"
    t.integer  "company_id"
    t.integer  "lawfirm_id"
    t.integer  "title_abstract_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["lawfirm_id"], name: "index_users_on_lawfirm_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["title_abstract_id"], name: "index_users_on_title_abstract_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
