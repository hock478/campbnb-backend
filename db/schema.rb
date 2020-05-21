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

ActiveRecord::Schema.define(version: 2020_05_21_203140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.integer "owner_id"
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "details"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "property_id"
    t.string "start_date"
    t.string "end_date"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "reservation_id"
    t.integer "rating"
    t.string "content"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "fullname"
    t.string "bio"
    t.string "image_url"
  end

end
