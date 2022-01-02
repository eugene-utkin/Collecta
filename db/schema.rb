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

ActiveRecord::Schema.define(version: 2021_08_18_081529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.hstore "name_translations"
    t.hstore "bio_translations"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.string "birth_place"
    t.integer "death_year"
    t.integer "death_month"
    t.integer "death_day"
    t.string "death_place"
    t.string "portrait_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "publication_year"
    t.text "description"
    t.string "image_url"
    t.string "publication_country"
    t.string "publication_city"
    t.string "publishing_company"
    t.integer "number_of_copies"
    t.integer "isbn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.hstore "name_translations"
    t.string "flag_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
