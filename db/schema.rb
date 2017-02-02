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

ActiveRecord::Schema.define(version: 20170201232843) do

  create_table "demographics", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dicom_images", force: :cascade do |t|
    t.string  "image_uid"
    t.string  "original_volume"
    t.string  "path_to_image"
    t.integer "dicom_series_id"
    t.index ["dicom_series_id"], name: "index_dicom_images_on_dicom_series_id"
  end

  create_table "dicom_series", force: :cascade do |t|
    t.string  "series_uid"
    t.string  "modality"
    t.integer "dicom_studies_id"
    t.index ["dicom_studies_id"], name: "index_dicom_series_on_dicom_studies_id"
  end

  create_table "dicom_studies", force: :cascade do |t|
    t.string   "study_uid"
    t.datetime "study_date"
    t.string   "description"
    t.string   "modality"
    t.integer  "demographics_id"
    t.index ["demographics_id"], name: "index_dicom_studies_on_demographics_id"
  end

end
