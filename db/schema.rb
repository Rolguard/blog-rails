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

ActiveRecord::Schema[8.0].define(version: 2024_12_09_001154) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.timestamptz "created_at"
    t.timestamptz "updated_at"
    t.text "status"
    t.text "image"
    t.string "slug"
    t.index ["slug"], name: "index_articles_on_slug", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.bigint "article_id"
    t.timestamptz "created_at"
    t.timestamptz "updated_at"
    t.text "status"
    t.bigint "user_id", null: false
    t.index ["article_id"], name: "idx_24664_index_comments_on_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "article_id"
    t.timestamptz "created_at"
    t.timestamptz "updated_at"
    t.index ["article_id"], name: "idx_24678_index_taggings_on_article_id"
    t.index ["tag_id"], name: "idx_24678_index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.text "name"
    t.timestamptz "created_at"
    t.timestamptz "updated_at"
    t.string "slug"
    t.index ["slug"], name: "index_tags_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "articles", name: "comments_article_id_fkey"
  add_foreign_key "comments", "users", name: "comments_users_id_fkey"
  add_foreign_key "taggings", "articles", name: "taggings_article_id_fkey"
  add_foreign_key "taggings", "tags", name: "taggings_tag_id_fkey"
end
