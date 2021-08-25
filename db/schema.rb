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

ActiveRecord::Schema.define(version: 20210825012811) do

  create_table "ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "ingredient_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ingredient_2"
    t.string "ingredient_3"
    t.string "ingredient_4"
    t.string "ingredient_5"
    t.string "ingredient_6"
    t.string "ingredient_7"
    t.string "ingredient_8"
    t.string "ingredient_9"
    t.integer "amount_1"
    t.integer "amount_2"
    t.integer "amount_3"
    t.integer "amount_4"
    t.integer "amount_5"
    t.integer "amount_6"
    t.integer "amount_7"
    t.integer "amount_8"
    t.integer "amount_9"
    t.string "unit_1"
    t.string "unit_2"
    t.string "unit_3"
    t.string "unit_4"
    t.string "unit_5"
    t.string "unit_6"
    t.string "unit_7"
    t.string "unit_8"
    t.string "unit_9"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "cooking_name"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "cooking_image"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "step_1"
    t.string "step_2"
    t.string "step_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "password"
  end

end
