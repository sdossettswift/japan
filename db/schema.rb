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

ActiveRecord::Schema.define(version: 20161101221614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "publication"
    t.date     "date"
    t.integer  "year"
    t.string   "link"
    t.string   "attachment"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "book_photos", force: :cascade do |t|
    t.integer  "book_id"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_photos_on_book_id", using: :btree
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "fullTitle"
    t.string   "shortTitle"
    t.string   "className"
    t.integer  "year"
    t.string   "publisher"
    t.string   "contributors"
    t.string   "pages"
    t.integer  "height"
    t.integer  "width"
    t.string   "language"
    t.text     "description"
    t.string   "amazonLink"
    t.string   "photoLink"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "subtitle"
    t.string   "lass"
    t.boolean  "contributed"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "essays", force: :cascade do |t|
    t.string   "title"
    t.string   "publication"
    t.date     "date"
    t.integer  "year"
    t.string   "publisher"
    t.string   "bookAuthor"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "title"
    t.string   "institution"
    t.date     "date"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "year"
    t.text     "description"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.string   "caption"
    t.date     "date"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.date     "date"
    t.text     "title"
    t.string   "category"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.boolean  "sweat_the_small_stuff"
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.integer  "oid",        null: false
    t.string   "namespace",  null: false
    t.datetime "created_at"
    t.index ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree
    t.index ["oid"], name: "index_refile_attachments_on_oid", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
