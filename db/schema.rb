# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_18_140820) do

  create_table "chemicals", force: :cascade do |t|
    t.string "name"
    t.string "structure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name"
    t.string "use"
    t.string "category"
    t.string "image"
    t.string "effect"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "effects", force: :cascade do |t|
    t.integer "variant_id", null: false
    t.integer "chemical_id", null: false
    t.string "medical_effect"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chemical_id"], name: "index_effects_on_chemical_id"
    t.index ["variant_id"], name: "index_effects_on_variant_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "drug_id", null: false
    t.integer "chemical_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chemical_id"], name: "index_ingredients_on_chemical_id"
    t.index ["drug_id"], name: "index_ingredients_on_drug_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "drug_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drug_id"], name: "index_prescriptions_on_drug_id"
    t.index ["user_id"], name: "index_prescriptions_on_user_id"
  end

  create_table "user_rows", force: :cascade do |t|
    t.string "RSID"
    t.string "chromosome"
    t.string "genotype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_variants", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "variant_id", null: false
    t.integer "user_row_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_variants_on_user_id"
    t.index ["user_row_id"], name: "index_user_variants_on_user_row_id"
    t.index ["variant_id"], name: "index_user_variants_on_variant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.integer "file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "variants", force: :cascade do |t|
    t.string "RSID"
    t.string "chromosome"
    t.string "allele"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "effects", "chemicals"
  add_foreign_key "effects", "variants"
  add_foreign_key "ingredients", "chemicals"
  add_foreign_key "ingredients", "drugs"
  add_foreign_key "prescriptions", "drugs"
  add_foreign_key "prescriptions", "users"
  add_foreign_key "user_variants", "user_rows"
  add_foreign_key "user_variants", "users"
  add_foreign_key "user_variants", "variants"
end
