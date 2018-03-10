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

ActiveRecord::Schema.define(version: 20180310220734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basic_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handlers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "brand"
    t.string "style"
    t.text "description"
    t.text "construction"
    t.text "composition"
    t.string "washing"
    t.string "fit"
    t.string "pocket"
    t.string "placket"
    t.string "finish"
    t.text "packing"
    t.string "other"
    t.text "Art"
    t.bigint "quotation_details_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_details_id"], name: "index_products_on_quotation_details_id"
  end

  create_table "quotation_details", force: :cascade do |t|
    t.string "product"
    t.decimal "target_price"
    t.integer "quantity"
    t.string "color"
    t.string "size"
    t.integer "ratio"
    t.date "delivery_date"
    t.string "status"
    t.string "incoterm"
    t.decimal "final_price"
    t.bigint "quotation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_id"], name: "index_quotation_details_on_quotation_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.integer "quotation_n"
    t.bigint "supplier_id"
    t.bigint "client_id"
    t.bigint "seller_id"
    t.bigint "handler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.index ["client_id"], name: "index_quotations_on_client_id"
    t.index ["handler_id"], name: "index_quotations_on_handler_id"
    t.index ["seller_id"], name: "index_quotations_on_seller_id"
    t.index ["supplier_id"], name: "index_quotations_on_supplier_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "products", "quotation_details", column: "quotation_details_id"
  add_foreign_key "quotation_details", "quotations"
  add_foreign_key "quotations", "clients"
  add_foreign_key "quotations", "handlers"
  add_foreign_key "quotations", "sellers"
  add_foreign_key "quotations", "suppliers"
end
