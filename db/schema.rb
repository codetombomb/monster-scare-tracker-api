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

ActiveRecord::Schema.define(version: 2022_08_10_163740) do

  create_table "avatars", force: :cascade do |t|
    t.string "url"
    t.integer "monster_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "address"
  end

  create_table "monster_houses", force: :cascade do |t|
    t.integer "monster_id"
    t.integer "house_id"
    t.boolean "completed", default: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "full_name"
    t.integer "age"
    t.integer "scary_rating", default: 0
  end

end
