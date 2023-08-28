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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_051214) do
  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parte_brands", force: :cascade do |t|
    t.integer "parte_id", null: false
    t.integer "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_parte_brands_on_brand_id"
    t.index ["parte_id"], name: "index_parte_brands_on_parte_id"
  end

  create_table "parte_colors", force: :cascade do |t|
    t.integer "parte_id", null: false
    t.integer "color_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_parte_colors_on_color_id"
    t.index ["parte_id"], name: "index_parte_colors_on_parte_id"
  end

  create_table "partes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "color_id", null: false
    t.integer "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_partes_on_brand_id"
    t.index ["color_id"], name: "index_partes_on_color_id"
  end

  add_foreign_key "parte_brands", "brands"
  add_foreign_key "parte_brands", "partes"
  add_foreign_key "parte_colors", "colors"
  add_foreign_key "parte_colors", "partes"
  add_foreign_key "partes", "brands"
  add_foreign_key "partes", "colors"
end
