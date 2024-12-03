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

ActiveRecord::Schema[8.0].define(version: 2024_11_29_060529) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.timestamptz "created_at"
    t.timestamptz "updated_at"
    t.text "status"
    t.text "image"
  end

  create_table "comments", force: :cascade do |t|
    t.text "commenter"
    t.text "body"
    t.bigint "article_id"
    t.timestamptz "created_at"
    t.timestamptz "updated_at"
    t.text "status"
    t.index ["article_id"], name: "idx_24664_index_comments_on_article_id"
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
  end

  add_foreign_key "comments", "articles", name: "comments_article_id_fkey"
  add_foreign_key "taggings", "articles", name: "taggings_article_id_fkey"
  add_foreign_key "taggings", "tags", name: "taggings_tag_id_fkey"
end
