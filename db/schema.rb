# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_27_160501) do

  create_table "certificates", charset: "utf8mb4", force: :cascade do |t|
    t.string "addressee"
    t.boolean "type_contract"
    t.boolean "salary"
    t.boolean "funtions"
    t.boolean "time_working"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "directed_certificate_id", null: false
    t.index ["directed_certificate_id"], name: "index_certificates_on_directed_certificate_id"
  end

  create_table "directed_certificates", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "holidays", charset: "utf8mb4", force: :cascade do |t|
    t.date "proposed_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "type_vacation_id", null: false
    t.index ["type_vacation_id"], name: "index_holidays_on_type_vacation_id"
  end

  create_table "permissions", charset: "utf8mb4", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.text "proposal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "type_permission_id", null: false
    t.bigint "reason_permission_id", null: false
    t.index ["reason_permission_id"], name: "index_permissions_on_reason_permission_id"
    t.index ["type_permission_id"], name: "index_permissions_on_type_permission_id"
  end

  create_table "reason_permissions", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_permissions", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_requests", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_vacations", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.integer "cedula"
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.bigint "cell_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "certificates", "directed_certificates"
  add_foreign_key "holidays", "type_vacations"
  add_foreign_key "permissions", "reason_permissions"
  add_foreign_key "permissions", "type_permissions"
end
