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

ActiveRecord::Schema.define(version: 20160823231504) do

  create_table "business_summaries", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.string   "business_name"
    t.date     "business_start"
  end

  create_table "businesses", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "business_name"
    t.date     "business_start"
    t.string   "business_street_1"
    t.string   "business_street_2"
    t.string   "business_city"
    t.string   "business_state"
    t.string   "business_zip"
    t.integer  "user_id"
    t.string   "ein"
    t.string   "biz_type"
    t.string   "bac"
    t.string   "method"
    t.string   "activity"
    t.string   "product"
    t.string   "schb3"
    t.string   "schb4a"
    t.string   "schb4b"
    t.string   "schb10a"
    t.string   "schb10b"
    t.integer  "gross_receipts"
    t.integer  "returns"
    t.integer  "cost_goods"
    t.integer  "other_income"
    t.integer  "off_comp"
    t.integer  "salaries"
    t.integer  "repairs"
    t.integer  "bad_debt"
    t.integer  "rents"
    t.integer  "taxes"
    t.integer  "interest"
    t.integer  "depreciation"
    t.integer  "advertising"
    t.integer  "pension"
    t.integer  "emp_ben"
    t.integer  "other_deductions"
    t.integer  "accounting"
    t.integer  "auto"
    t.integer  "bank_charge"
    t.integer  "cell_phone"
    t.integer  "commissions"
    t.integer  "computer"
    t.integer  "consulting"
    t.integer  "credit_costs"
    t.integer  "delivery"
    t.integer  "dues"
    t.integer  "education"
    t.integer  "fuel"
    t.integer  "gifts"
    t.integer  "ind_contractor"
    t.integer  "insurance"
    t.integer  "internet"
    t.integer  "janitorial"
    t.integer  "legal_professional"
    t.integer  "marketing"
    t.integer  "meals50"
    t.integer  "misc"
    t.integer  "office"
    t.integer  "parking"
    t.integer  "payroll_process"
    t.integer  "permits"
    t.integer  "postage"
    t.integer  "printing"
    t.integer  "software"
    t.integer  "supplies"
    t.integer  "telephone"
    t.integer  "tools"
    t.integer  "travel"
    t.integer  "utilities"
    t.integer  "waste_removal"
    t.integer  "other1"
    t.integer  "other2"
    t.integer  "other3"
    t.integer  "other4"
    t.integer  "other5"
    t.integer  "other6"
  end

  create_table "tax_returns", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "business_id"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_name"
    t.string   "user_email"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
