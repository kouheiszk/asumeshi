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

ActiveRecord::Schema.define(version: 20161009021343) do

  create_table "crawled_urls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url"], name: "index_crawled_urls_on_url", using: :btree
  end

  create_table "klasses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses_recommendations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "recommendation_id"
    t.integer "klass_id"
    t.index ["klass_id"], name: "index_klasses_recommendations_on_klass_id", using: :btree
    t.index ["recommendation_id"], name: "index_klasses_recommendations_on_recommendation_id", using: :btree
  end

  create_table "materials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer  "recipe_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_materials_on_name", using: :btree
    t.index ["recipe_id"], name: "index_materials_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "source"
    t.string   "source_uid"
    t.string   "lang",       limit: 4
    t.string   "url"
    t.string   "title"
    t.string   "image_url"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["source", "source_uid"], name: "index_recipes_on_source_and_source_uid", unique: true, using: :btree
  end

  create_table "recommendations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "url"
    t.string   "image_url"
    t.string   "shop_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "klasses_recommendations", "klasses"
  add_foreign_key "klasses_recommendations", "recommendations"
end
