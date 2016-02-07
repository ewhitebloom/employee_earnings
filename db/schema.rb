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

ActiveRecord::Schema.define(version: 20160207174959) do

  create_table "departments", force: :cascade do |t|
    t.string "name"
  end

  add_index "departments", ["name"], name: "index_departments_on_name"

  create_table "earnings_reports", force: :cascade do |t|
    t.integer "title_id"
    t.float   "average_total_earnings"
  end

  add_index "earnings_reports", ["title_id"], name: "index_earnings_reports_on_title_id"

  create_table "employee_earnings", force: :cascade do |t|
    t.string  "name"
    t.integer "department_id"
    t.integer "title_id"
    t.float   "total_earnings"
    t.integer "zip_code_id"
  end

  add_index "employee_earnings", ["department_id"], name: "index_employee_earnings_on_department_id"
  add_index "employee_earnings", ["name"], name: "index_employee_earnings_on_name"
  add_index "employee_earnings", ["title_id"], name: "index_employee_earnings_on_title_id"
  add_index "employee_earnings", ["zip_code_id"], name: "index_employee_earnings_on_zip_code_id"

  create_table "titles", force: :cascade do |t|
    t.string "name"
  end

  add_index "titles", ["name"], name: "index_titles_on_name"

  create_table "zip_codes", force: :cascade do |t|
    t.integer "zip_code"
  end

  add_index "zip_codes", ["zip_code"], name: "index_zip_codes_on_zip_code"

end
