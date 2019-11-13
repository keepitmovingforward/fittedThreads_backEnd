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

ActiveRecord::Schema.define(version: 2019_10_30_155725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clothing_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "clothing_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clothings", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "description"
    t.string "image_url"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size"
    t.integer "clothing_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_clothings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "clothing_id"
    t.integer "size_id"
    t.integer "topNeck"
    t.integer "topChest"
    t.integer "topWaist"
    t.integer "topSleeve"
    t.integer "topFront_Length"
    t.integer "bottomWaist"
    t.integer "bottomLength"
    t.integer "bottomHip"
    t.integer "bottomThigh"
    t.integer "bottomBottom_Hem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "avatar"
    t.integer "topNeck"
    t.integer "topChest"
    t.integer "topWaist"
    t.integer "topSleeve"
    t.integer "topFront_Length"
    t.integer "bottomWaist"
    t.integer "bottomLength"
    t.integer "bottomHip"
    t.integer "bottomThigh"
    t.integer "bottomBottom_Hem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
