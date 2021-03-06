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

ActiveRecord::Schema.define(version: 20170711114816) do

  create_table "casts", force: :cascade do |t|
    t.string "name"
    t.date "DOB"
    t.string "photos_URL"
    t.string "gender"
    t.integer "age"
    t.boolean "movie_or_tv"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_type", "resource_id"], name: "index_images_on_resource_type_and_resource_id"
  end

  create_table "movie_casts", force: :cascade do |t|
    t.integer "cast_id"
    t.string "resource_type"
    t.integer "resource_id"
    t.index ["cast_id"], name: "index_movie_casts_on_cast_id"
    t.index ["resource_type", "resource_id"], name: "index_movie_casts_on_resource_type_and_resource_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "language"
    t.string "genre"
    t.string "release_date"
    t.string "trailer_URL"
    t.string "summary_URL"
    t.decimal "duration"
    t.text "description"
    t.string "movie_URL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "comment"
    t.datetime "date_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "resource_type"
    t.integer "resource_id"
    t.index ["resource_type", "resource_id"], name: "index_reviews_on_resource_type_and_resource_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tv_casts", force: :cascade do |t|
  end

  create_table "tvs", force: :cascade do |t|
    t.string "name"
    t.string "language"
    t.string "genre"
    t.date "release_date"
    t.string "trailer_URL"
    t.integer "duration"
    t.text "description"
    t.string "tv_URL"
    t.string "summary_URL"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
