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

ActiveRecord::Schema.define(version: 20170728220600) do

  create_table "forms", force: :cascade do |t|
    t.string "form"
    t.string "tax_return"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.string "text"
    t.integer "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "response_type"
    t.integer "section"
    t.index ["form_id"], name: "index_questions_on_form_id"
  end

  create_table "response_types", force: :cascade do |t|
    t.string "type"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_responses", force: :cascade do |t|
    t.text "response"
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_upload_file_name"
    t.string "image_upload_content_type"
    t.integer "image_upload_file_size"
    t.datetime "image_upload_updated_at"
    t.index ["question_id"], name: "index_user_responses_on_question_id"
    t.index ["user_id"], name: "index_user_responses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "image_upload_file_name"
    t.string "image_upload_content_type"
    t.integer "image_upload_file_size"
    t.datetime "image_upload_updated_at"
    t.boolean "email_confirmed", default: false
    t.string "confirm_token"
  end

end
