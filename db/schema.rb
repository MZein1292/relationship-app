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

ActiveRecord::Schema.define(version: 20160925005703) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.text     "address"
    t.string   "customer_id"
    t.text     "additional_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "family_name"
    t.string   "given_names"
    t.integer  "company_id"
    t.string   "title"
    t.string   "phonne"
    t.string   "email"
    t.string   "website"
    t.string   "customer_id"
    t.text     "additional_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["company_id"], name: "index_contacts_on_company_id"
  end

  create_table "contacts_projects", force: :cascade do |t|
    t.integer "contacts_id"
    t.integer "projects_id"
    t.index ["contacts_id"], name: "index_contacts_projects_on_contacts_id"
    t.index ["projects_id"], name: "index_contacts_projects_on_projects_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "description"
    t.integer  "status"
    t.integer  "project_id"
    t.datetime "due_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

end
