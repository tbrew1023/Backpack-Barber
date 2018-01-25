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

ActiveRecord::Schema.define(version: 20180124232710) do

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "lastName"
    t.string "firstName"
    t.string "phoneNumber"
    t.boolean "isBarber"
    t.date "signUpDate"
    t.string "userImage"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "DateTime"
    t.string "location"
    t.integer "customerID_id"
    t.integer "barberID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["barberID_id"], name: "index_appointments_on_barberID_id"
    t.index ["customerID_id"], name: "index_appointments_on_customerID_id"
  end

  create_table "barber_images", force: :cascade do |t|
    t.integer "customerID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerID_id"], name: "index_barber_images_on_customerID_id"
  end

  create_table "barbers", force: :cascade do |t|
    t.string "email"
    t.integer "charge"
    t.integer "averageRating"
    t.string "description"
    t.boolean "barberType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.integer "customerID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerID_id"], name: "index_customers_on_customerID_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "customerID_id"
    t.integer "barberID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["barberID_id"], name: "index_follows_on_barberID_id"
    t.index ["customerID_id"], name: "index_follows_on_customerID_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "imageGroupID_id"
    t.string "url"
    t.integer "sizeX"
    t.integer "sizeY"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageGroupID_id"], name: "index_images_on_imageGroupID_id"
  end

  create_table "product_colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_sizes", force: :cascade do |t|
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "productType_id"
    t.integer "productColor_id"
    t.integer "productSize_id"
    t.integer "productPrice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productColor_id"], name: "index_products_on_productColor_id"
    t.index ["productSize_id"], name: "index_products_on_productSize_id"
    t.index ["productType_id"], name: "index_products_on_productType_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "subject"
    t.string "body"
    t.integer "rating"
    t.integer "customerID_id"
    t.integer "barberID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["barberID_id"], name: "index_reviews_on_barberID_id"
    t.index ["customerID_id"], name: "index_reviews_on_customerID_id"
  end

  create_table "store_transactions", force: :cascade do |t|
    t.datetime "dateTime"
    t.integer "charge"
    t.integer "customerID_id"
    t.integer "productID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerID_id"], name: "index_store_transactions_on_customerID_id"
    t.index ["productID_id"], name: "index_store_transactions_on_productID_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "dateTime"
    t.integer "customerID_id"
    t.integer "barberID_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["barberID_id"], name: "index_transactions_on_barberID_id"
    t.index ["customerID_id"], name: "index_transactions_on_customerID_id"
  end

end
