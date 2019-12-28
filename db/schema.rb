# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_25_012013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "user_type"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_type", "user_id"], name: "index_accounts_on_user_type_and_user_id"
  end

  create_table "agent_reviews", force: :cascade do |t|
    t.string "author"
    t.integer "rating"
    t.string "text"
    t.bigint "agent_id"
    t.bigint "tenant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agent_id"], name: "index_agent_reviews_on_agent_id"
    t.index ["tenant_id"], name: "index_agent_reviews_on_tenant_id"
  end

  create_table "agents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "image"
    t.string "bio"
    t.string "brokerage"
    t.integer "rating_average"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "apartment_listings", force: :cascade do |t|
    t.string "apartment"
    t.integer "rent"
    t.integer "lease_length"
    t.integer "broker_fee"
    t.boolean "available"
    t.integer "bedroom_count"
    t.integer "bathroom_count"
    t.date "availability_date"
    t.text "summary"
    t.text "image"
    t.bigint "building_id"
    t.bigint "agent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agent_id"], name: "index_apartment_listings_on_agent_id"
    t.index ["building_id"], name: "index_apartment_listings_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "address"
    t.integer "year_built"
    t.boolean "elevator"
    t.boolean "super"
    t.boolean "laundry"
    t.bigint "neighborhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["neighborhood_id"], name: "index_buildings_on_neighborhood_id"
  end

  create_table "listing_reviews", force: :cascade do |t|
    t.string "author"
    t.integer "rating"
    t.string "text"
    t.bigint "tenant_id"
    t.bigint "apartment_listing_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_listing_id"], name: "index_listing_reviews_on_apartment_listing_id"
    t.index ["tenant_id"], name: "index_listing_reviews_on_tenant_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.string "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "open_houses", force: :cascade do |t|
    t.string "details"
    t.date "date"
    t.time "time"
    t.bigint "apartment_listing_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_listing_id"], name: "index_open_houses_on_apartment_listing_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "image"
    t.date "move_in_date"
    t.integer "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "viewings", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.boolean "confirmed"
    t.bigint "apartment_listing_id"
    t.bigint "tenant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_listing_id"], name: "index_viewings_on_apartment_listing_id"
    t.index ["tenant_id"], name: "index_viewings_on_tenant_id"
  end

end
