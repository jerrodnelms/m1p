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

ActiveRecord::Schema.define(version: 20180108154155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_pat_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "account_pat_types", ["surg_hosp_form_id"], name: "index_account_pat_types_on_surg_hosp_form_id", using: :btree

  create_table "clinic_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_conditions", ["clinic_id"], name: "index_clinic_conditions_on_clinic_id", using: :btree

  create_table "clinic_cr_conditions", force: :cascade do |t|
    t.integer  "clinic_cr_doc_id"
    t.string   "type"
    t.integer  "clinic_condition_id"
    t.string   "detail"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "clinic_cr_conditions", ["clinic_condition_id"], name: "index_clinic_cr_conditions_on_clinic_condition_id", using: :btree
  add_index "clinic_cr_conditions", ["clinic_cr_doc_id"], name: "index_clinic_cr_conditions_on_clinic_cr_doc_id", using: :btree

  create_table "clinic_cr_docs", force: :cascade do |t|
    t.integer  "clinic_cr_form_id"
    t.integer  "clinic_doc_id"
    t.string   "pcp"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "clinic_cr_docs", ["clinic_cr_form_id"], name: "index_clinic_cr_docs_on_clinic_cr_form_id", using: :btree
  add_index "clinic_cr_docs", ["clinic_doc_id"], name: "index_clinic_cr_docs_on_clinic_doc_id", using: :btree

  create_table "clinic_cr_forms", force: :cascade do |t|
    t.integer  "clinic_id"
    t.string   "mysis_id"
    t.string   "any_pertinent_conditions"
    t.integer  "actual_conditions_tally"
    t.integer  "misdiagnosed_conditions_tally"
    t.integer  "captured_conditions_tally"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "clinic_cr_forms", ["clinic_id"], name: "index_clinic_cr_forms_on_clinic_id", using: :btree

  create_table "clinic_docs", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_docs", ["clinic_id"], name: "index_clinic_docs_on_clinic_id", using: :btree

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folders", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "folder_id"
    t.integer "group_id"
    t.boolean "can_create"
    t.boolean "can_read"
    t.boolean "can_update"
    t.boolean "can_delete"
  end

  create_table "share_links", force: :cascade do |t|
    t.string   "emails"
    t.string   "link_token"
    t.datetime "link_expires_at"
    t.integer  "user_file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "message"
    t.integer  "user_id"
  end

  create_table "surg_hosp_cr_conditions", force: :cascade do |t|
    t.integer  "surg_hosp_cr_doc_id"
    t.string   "type"
    t.string   "name"
    t.string   "detail"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "surg_hosp_cr_conditions", ["surg_hosp_cr_doc_id"], name: "index_surg_hosp_cr_conditions_on_surg_hosp_cr_doc_id", using: :btree

  create_table "surg_hosp_cr_docs", force: :cascade do |t|
    t.integer  "surg_hosp_cr_id"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "surg_hosp_cr_docs", ["surg_hosp_cr_id"], name: "index_surg_hosp_cr_docs_on_surg_hosp_cr_id", using: :btree

  create_table "surg_hosp_crs", force: :cascade do |t|
    t.integer  "surg_hosp_form_id"
    t.integer  "surg_hosp_form_hospital_id"
    t.integer  "account_pat_type_id"
    t.integer  "account_pat_num"
    t.date     "admit_date"
    t.date     "discharg_date"
    t.string   "any_pertinent_conditions_string"
    t.integer  "omitted_conditions_tally"
    t.integer  "dnmc_conditions_tally"
    t.integer  "actual_conditions_tally"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "surg_hosp_crs", ["account_pat_type_id"], name: "index_surg_hosp_crs_on_account_pat_type_id", using: :btree
  add_index "surg_hosp_crs", ["surg_hosp_form_hospital_id"], name: "index_surg_hosp_crs_on_surg_hosp_form_hospital_id", using: :btree
  add_index "surg_hosp_crs", ["surg_hosp_form_id"], name: "index_surg_hosp_crs_on_surg_hosp_form_id", using: :btree

  create_table "surg_hosp_form_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "surg_hosp_form_conditions", ["surg_hosp_form_id"], name: "index_surg_hosp_form_conditions_on_surg_hosp_form_id", using: :btree

  create_table "surg_hosp_form_docs", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "surg_hosp_form_docs", ["surg_hosp_form_id"], name: "index_surg_hosp_form_docs_on_surg_hosp_form_id", using: :btree

  create_table "surg_hosp_form_hospitals", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "surg_hosp_form_hospitals", ["surg_hosp_form_id"], name: "index_surg_hosp_form_hospitals_on_surg_hosp_form_id", using: :btree

  create_table "surg_hosp_forms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_files", force: :cascade do |t|
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "folder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "hashed_password"
    t.string   "password_salt"
    t.string   "is_admin",                        default: "f"
    t.string   "remember_token"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "signup_token"
    t.datetime "signup_token_expires_at"
  end

  add_index "users", ["signup_token"], name: "index_users_on_signup_token", using: :btree

  add_foreign_key "account_pat_types", "surg_hosp_forms"
  add_foreign_key "clinic_conditions", "clinics"
  add_foreign_key "clinic_cr_conditions", "clinic_conditions"
  add_foreign_key "clinic_cr_conditions", "clinic_cr_docs"
  add_foreign_key "clinic_cr_docs", "clinic_cr_forms"
  add_foreign_key "clinic_cr_docs", "clinic_docs"
  add_foreign_key "clinic_cr_forms", "clinics"
  add_foreign_key "clinic_docs", "clinics"
  add_foreign_key "surg_hosp_cr_conditions", "surg_hosp_cr_docs"
  add_foreign_key "surg_hosp_cr_docs", "surg_hosp_crs"
  add_foreign_key "surg_hosp_crs", "account_pat_types"
  add_foreign_key "surg_hosp_crs", "surg_hosp_form_hospitals"
  add_foreign_key "surg_hosp_crs", "surg_hosp_forms"
  add_foreign_key "surg_hosp_form_conditions", "surg_hosp_forms"
  add_foreign_key "surg_hosp_form_docs", "surg_hosp_forms"
  add_foreign_key "surg_hosp_form_hospitals", "surg_hosp_forms"
end
