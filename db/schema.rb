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

ActiveRecord::Schema.define(version: 2022_05_02_171147) do

  create_table "candies", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "inventory"
    t.string "image"
    t.string "quantity"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.string "email"
  end

  create_table "order_candies", force: :cascade do |t|
    t.integer "quantity"
    t.integer "candy_id"
    t.integer "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_status"
    t.string "address"
    t.string "state"
    t.string "zipcode"
    t.integer "customer_id"
    t.integer "credit_card_number"
    t.string "card_holder_name"
    t.integer "cvc"
  end

end
