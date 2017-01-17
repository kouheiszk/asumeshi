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

ActiveRecord::Schema.define(version: 20170115071630) do

  create_table "crawled_urls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "url",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url"], name: "index_crawled_urls_on_url", unique: true, using: :btree
  end

  create_table "dishes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "kondate_id",                   null: false
    t.integer "recipe_id",                    null: false
    t.boolean "is_main_dish", default: false, null: false
    t.index ["is_main_dish"], name: "index_dishes_on_is_main_dish", using: :btree
    t.index ["kondate_id", "recipe_id"], name: "index_dishes_on_kondate_id_and_recipe_id", unique: true, using: :btree
    t.index ["kondate_id"], name: "index_dishes_on_kondate_id", using: :btree
    t.index ["recipe_id"], name: "index_dishes_on_recipe_id", using: :btree
  end

  create_table "klasses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_klasses_on_name", unique: true, using: :btree
  end

  create_table "kondates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "source",       null: false
    t.string   "source_uid",   null: false
    t.integer  "genre",        null: false
    t.string   "url",          null: false
    t.string   "title",        null: false
    t.string   "image_url",    null: false
    t.integer  "cooking_time", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["genre"], name: "index_kondates_on_genre", using: :btree
    t.index ["source", "source_uid"], name: "index_kondates_on_source_and_source_uid", unique: true, using: :btree
  end

  create_table "materials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_materials_on_name", unique: true, using: :btree
  end

  create_table "materials_recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "material_id", null: false
    t.integer "recipe_id",   null: false
    t.index ["material_id"], name: "index_materials_recipes_on_material_id", using: :btree
    t.index ["recipe_id"], name: "index_materials_recipes_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "source",     null: false
    t.string   "source_uid", null: false
    t.string   "url",        null: false
    t.string   "title",      null: false
    t.string   "image_url",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source", "source_uid"], name: "index_recipes_on_source_and_source_uid", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "uid",                             null: false
    t.string   "provider",                        null: false
    t.string   "name",                            null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
