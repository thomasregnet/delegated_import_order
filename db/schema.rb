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

ActiveRecord::Schema.define(version: 2021_12_21_202935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brainz_import_orders", force: :cascade do |t|
    t.uuid "code", null: false
    t.text "kind", null: false
    t.text "state", null: false
  end

  create_table "import_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "import_order_id"
    t.text "uri"
    t.integer "requests_count", limit: 2
    t.text "importable_type"
    t.string "importable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["import_order_id"], name: "index_import_orders_on_import_order_id"
    t.index ["user_id"], name: "index_import_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "import_orders", "import_orders"
  add_foreign_key "import_orders", "users"
end
