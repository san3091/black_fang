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

ActiveRecord::Schema.define(version: 20170521044434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dance_memberships", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "dance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dance_id"], name: "index_dance_memberships_on_dance_id"
    t.index ["user_id"], name: "index_dance_memberships_on_user_id"
  end

  create_table "dances", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_links", id: false, force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id", "child_id"], name: "index_video_links_on_parent_id_and_child_id", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "youtube_url"
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dance_id"
    t.index ["dance_id"], name: "index_videos_on_dance_id"
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

  add_foreign_key "dance_memberships", "dances"
  add_foreign_key "dance_memberships", "users"
  add_foreign_key "videos", "users"
end
