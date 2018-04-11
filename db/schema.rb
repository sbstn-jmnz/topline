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

ActiveRecord::Schema.define(version: 20180411023609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "alarms", force: :cascade do |t|
    t.string "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "country"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commissions", force: :cascade do |t|
    t.bigint "delivery_id"
    t.bigint "deduction_id"
    t.decimal "com"
    t.decimal "totalcom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deduction_id"], name: "index_commissions_on_deduction_id"
    t.index ["delivery_id"], name: "index_commissions_on_delivery_id"
  end

  create_table "deductions", force: :cascade do |t|
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "alarm", precision: 20, scale: 3
    t.decimal "freight", precision: 20, scale: 3
    t.decimal "overcharge", precision: 20, scale: 3
    t.decimal "interest", precision: 20, scale: 3
    t.index ["client_id"], name: "index_deductions_on_client_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "port_id"
    t.string "invnumber"
    t.date "invdate"
    t.integer "totalinvq"
    t.decimal "price"
    t.decimal "totalinvamount"
    t.date "eta"
    t.string "bl"
    t.string "docs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_deliveries_on_order_id"
    t.index ["port_id"], name: "index_deliveries_on_port_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "delivery_id"
    t.date "docsbymail"
    t.date "approvaldate"
    t.string "coriername"
    t.string "couriernumber"
    t.date "docsreceived"
    t.date "docssenttoclient"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_id"], name: "index_documents_on_delivery_id"
  end

  create_table "gastos", force: :cascade do |t|
    t.string "cc"
    t.date "fecha"
    t.string "descripcion"
    t.integer "cargo"
    t.integer "saldo"
    t.boolean "pagado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handlers", force: :cascade do |t|
    t.bigint "supplier_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_handlers_on_supplier_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "proforma"
    t.bigint "quotation_id"
    t.bigint "quotationdetail_id"
    t.bigint "variant_id"
    t.string "totalorder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_id"], name: "index_orders_on_quotation_id"
    t.index ["quotationdetail_id"], name: "index_orders_on_quotationdetail_id"
    t.index ["variant_id"], name: "index_orders_on_variant_id"
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "order_id"
    t.decimal "totalamount"
    t.decimal "advance"
    t.date "advancedate"
    t.decimal "balance"
    t.decimal "balancepaid"
    t.date "paiddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "paymentterms", force: :cascade do |t|
    t.string "clause"
    t.string "conditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pinumbers", force: :cascade do |t|
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.bigint "category_id"
    t.string "photo"
    t.string "description"
    t.string "finish"
    t.string "composition"
    t.string "fit"
    t.string "construction"
    t.string "placket"
    t.string "pocket"
    t.string "washing"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "quotationdetails", force: :cascade do |t|
    t.bigint "quotation_id"
    t.bigint "brand_id"
    t.bigint "product_id"
    t.bigint "color_id"
    t.string "quantity"
    t.bigint "size_id"
    t.string "ratio"
    t.date "deliverydate"
    t.string "targetprice"
    t.string "finalprice"
    t.string "otherdetails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.decimal "total"
    t.index ["brand_id"], name: "index_quotationdetails_on_brand_id"
    t.index ["color_id"], name: "index_quotationdetails_on_color_id"
    t.index ["product_id"], name: "index_quotationdetails_on_product_id"
    t.index ["quotation_id"], name: "index_quotationdetails_on_quotation_id"
    t.index ["size_id"], name: "index_quotationdetails_on_size_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.bigint "season_id"
    t.bigint "supplier_id"
    t.bigint "handler_id"
    t.bigint "seller_id"
    t.bigint "client_id"
    t.bigint "paymentterm_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pi"
    t.string "recap"
    t.string "tecsheets"
    t.index ["client_id"], name: "index_quotations_on_client_id"
    t.index ["handler_id"], name: "index_quotations_on_handler_id"
    t.index ["paymentterm_id"], name: "index_quotations_on_paymentterm_id"
    t.index ["season_id"], name: "index_quotations_on_season_id"
    t.index ["seller_id"], name: "index_quotations_on_seller_id"
    t.index ["supplier_id"], name: "index_quotations_on_supplier_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "closed"
  end

  create_table "selleraccounts", force: :cascade do |t|
    t.bigint "seller_id"
    t.string "bank"
    t.text "address"
    t.string "account"
    t.string "swift"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_selleraccounts_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplieraccounts", force: :cascade do |t|
    t.bigint "supplier_id"
    t.string "bank"
    t.text "address"
    t.string "account"
    t.string "swift"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_supplieraccounts_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "country"
    t.string "contact"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.bigint "quotationdetail_id"
    t.integer "quantity"
    t.bigint "size_id"
    t.integer "ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotationdetail_id"], name: "index_variants_on_quotationdetail_id"
    t.index ["size_id"], name: "index_variants_on_size_id"
  end

  add_foreign_key "commissions", "deductions"
  add_foreign_key "commissions", "deliveries"
  add_foreign_key "deductions", "clients"
  add_foreign_key "deliveries", "orders"
  add_foreign_key "deliveries", "ports"
  add_foreign_key "documents", "deliveries"
  add_foreign_key "handlers", "suppliers"
  add_foreign_key "orders", "quotationdetails"
  add_foreign_key "orders", "quotations"
  add_foreign_key "orders", "variants"
  add_foreign_key "payments", "orders"
  add_foreign_key "products", "categories"
  add_foreign_key "quotationdetails", "brands"
  add_foreign_key "quotationdetails", "colors"
  add_foreign_key "quotationdetails", "products"
  add_foreign_key "quotationdetails", "quotations"
  add_foreign_key "quotationdetails", "sizes"
  add_foreign_key "quotations", "clients"
  add_foreign_key "quotations", "handlers"
  add_foreign_key "quotations", "paymentterms"
  add_foreign_key "quotations", "seasons"
  add_foreign_key "quotations", "sellers"
  add_foreign_key "quotations", "suppliers"
  add_foreign_key "selleraccounts", "sellers"
  add_foreign_key "supplieraccounts", "suppliers"
  add_foreign_key "variants", "quotationdetails"
  add_foreign_key "variants", "sizes"
end
