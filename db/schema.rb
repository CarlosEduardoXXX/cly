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

ActiveRecord::Schema.define(version: 20180919232239) do

  create_table "companies", force: :cascade do |t|
    t.integer "person_id"
    t.integer "cnpj"
    t.string "nickname"
    t.string "descrition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_companies_on_person_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer "person_id"
    t.integer "cpf"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_customers_on_person_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "company_id"
    t.string "name"
    t.boolean "customer_confirm"
    t.boolean "company_confirm"
    t.date "date"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_events_on_company_id"
    t.index ["customer_id"], name: "index_events_on_customer_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "cep"
    t.string "country"
    t.string "state"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
