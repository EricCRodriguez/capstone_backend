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

ActiveRecord::Schema.define(version: 2019_12_26_203757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "found_pets", force: :cascade do |t|
    t.integer "user_id"
    t.string "address"
    t.string "breed"
    t.string "color"
    t.string "size"
    t.string "gender"
    t.string "picture"
    t.string "add_info"
    t.string "shelter_info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lost_pets", force: :cascade do |t|
    t.integer "user_id"
    t.string "address"
    t.string "search_area"
    t.string "breed"
    t.string "color"
    t.string "size"
    t.string "age"
    t.string "gender"
    t.string "behaviour_type"
    t.string "name"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "message_bodies", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.string "body"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
