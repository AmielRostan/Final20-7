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

ActiveRecord::Schema.define(version: 2021_07_20_222907) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "appointment_date"
    t.integer "worker_id", null: false
    t.integer "medical_center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medical_center_id"], name: "index_appointments_on_medical_center_id"
    t.index ["worker_id"], name: "index_appointments_on_worker_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cloth_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clothings_transmissions", id: false, force: :cascade do |t|
    t.integer "clothing_id", null: false
    t.integer "transmission_id", null: false
  end

  create_table "cloths", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "description"
    t.integer "clothing_type_id", null: false
    t.integer "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_cloths_on_brand_id"
    t.index ["clothing_type_id"], name: "index_cloths_on_clothing_type_id"
  end

  create_table "guards", force: :cascade do |t|
    t.datetime "appointment_date"
    t.integer "worker_id", null: false
    t.integer "medical_center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medical_center_id"], name: "index_guards_on_medical_center_id"
    t.index ["worker_id"], name: "index_guards_on_worker_id"
  end

  create_table "medical_center_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_centers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.integer "phone_number"
    t.integer "medical_center_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medical_center_type_id"], name: "index_medical_centers_on_medical_center_type_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "sex"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transmissions", force: :cascade do |t|
    t.date "date"
    t.integer "program_number"
    t.integer "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_transmissions_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worker_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "email"
    t.integer "worker_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_type_id"], name: "index_workers_on_worker_type_id"
  end

  add_foreign_key "appointments", "medical_centers"
  add_foreign_key "appointments", "workers"
  add_foreign_key "cloths", "brands"
  add_foreign_key "cloths", "clothing_types"
  add_foreign_key "guards", "medical_centers"
  add_foreign_key "guards", "workers"
  add_foreign_key "medical_centers", "medical_center_types"
  add_foreign_key "transmissions", "people"
  add_foreign_key "workers", "worker_types"
end
