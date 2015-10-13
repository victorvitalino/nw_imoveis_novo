# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151013163134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attributes", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "buttons", force: :cascade do |t|
    t.string   "title"
    t.integer  "order",      default: 0
    t.string   "image_path"
    t.integer  "code",       default: 0
    t.boolean  "status",     default: true
    t.string   "link"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "logo_path"
    t.string   "social_reason"
    t.string   "fantasy_name"
    t.string   "cnpj"
    t.string   "cpf"
    t.integer  "type_client",            default: 0
    t.string   "address"
    t.string   "cep"
    t.string   "uf"
    t.string   "city"
    t.string   "contact_email"
    t.string   "cadastre_email"
    t.string   "telephone"
    t.string   "celphone"
    t.string   "responsible_telephone"
    t.string   "responsible_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree
  add_index "clients", ["username"], name: "index_clients_on_username", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "image_path"
    t.string   "name"
    t.string   "description"
    t.boolean  "status",      default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "projects", ["client_id"], name: "index_projects_on_client_id", using: :btree

  create_table "properties", force: :cascade do |t|
    t.integer  "situation",                 default: 0
    t.integer  "type_property",             default: 0
    t.boolean  "status",                    default: true
    t.string   "iptu"
    t.date     "expiration_date"
    t.string   "cep"
    t.string   "uf"
    t.string   "city"
    t.string   "region"
    t.string   "district"
    t.string   "address"
    t.string   "group"
    t.string   "number"
    t.string   "block"
    t.string   "complement"
    t.string   "reference_point"
    t.boolean  "address_link_visible"
    t.boolean  "complement_link_visible"
    t.string   "name"
    t.integer  "rooms",                     default: 0
    t.string   "unit"
    t.float    "value",                     default: 0.0
    t.integer  "suit",                      default: 0
    t.float    "value_m2",                  default: 0.0
    t.float    "area",                      default: 0.0
    t.integer  "parking_spaces",            default: 0
    t.integer  "floor",                     default: 0
    t.string   "sun_position"
    t.string   "link_tour"
    t.float    "value_rent",                default: 0.0
    t.integer  "client_id"
    t.integer  "project_id"
    t.integer  "property_attribute_id",     default: [],                 array: true
    t.integer  "construction_companies_id", default: [],                 array: true
    t.integer  "sellers_id",                default: [],                 array: true
    t.text     "description"
    t.boolean  "commercial",                default: false
    t.boolean  "elevator",                  default: false
    t.boolean  "coverage",                  default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "properties", ["client_id"], name: "index_properties_on_client_id", using: :btree
  add_index "properties", ["project_id"], name: "index_properties_on_project_id", using: :btree
  add_index "properties", ["situation"], name: "index_properties_on_situation", using: :btree
  add_index "properties", ["type_property"], name: "index_properties_on_type_property", using: :btree
  add_index "properties", ["uf"], name: "index_properties_on_uf", using: :btree

  create_table "property_images", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "image_path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "property_images", ["property_id"], name: "index_property_images_on_property_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "telephone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
