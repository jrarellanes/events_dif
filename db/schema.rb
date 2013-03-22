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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130322170615) do

  create_table "asistencia", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "evento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", :force => true do |t|
    t.string   "nombre"
    t.integer  "tipo_evento_id"
    t.date     "fecha"
    t.string   "ubicacion"
    t.text     "descripcion"
    t.integer  "cupo"
    t.time     "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "nombre"
    t.string   "apaterno"
    t.string   "amaterno"
    t.string   "ocupacion"
    t.string   "correo"
    t.string   "comunidadOrigen"
    t.string   "colonia"
    t.integer  "nfam"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_eventos", :force => true do |t|
    t.string   "tipo"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                     :null => false
    t.string   "email",                                     :null => false
    t.string   "persistence_token",                         :null => false
    t.string   "crypted_password",                          :null => false
    t.string   "password_salt",                             :null => false
    t.string   "single_access_token",                       :null => false
    t.string   "perishable_token",                          :null => false
    t.integer  "login_count",         :default => 0,        :null => false
    t.integer  "failed_login_count",  :default => 0,        :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles",               :default => "--- []"
  end

end
