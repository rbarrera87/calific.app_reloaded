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

ActiveRecord::Schema.define(version: 20140224185819) do

  create_table "carreras", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "nombre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carreras", ["nombre_id"], name: "index_carreras_on_nombre_id", unique: true, using: :btree

  create_table "encuestas", force: true do |t|
    t.string   "pregunta"
    t.string   "respuesta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grados", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materias", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "fotografia_url"
    t.integer  "numero_control"
    t.date     "fecha_nacimiento"
    t.string   "estado_civil"
    t.string   "sexo"
    t.string   "cp"
    t.string   "curp"
    t.string   "nss"
    t.string   "rfc"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "calle"
    t.string   "numero_exterior"
    t.string   "numero_interior"
    t.string   "numero_departamento"
    t.string   "referencias"
    t.text     "comentarios"
    t.string   "poblacion"
    t.string   "estado"
    t.text     "situacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",             null: false
    t.integer  "grupo_id",            null: false
    t.string   "turno"
    t.integer  "carrera_id"
  end

  add_index "profiles", ["grupo_id"], name: "index_profiles_on_grupo_id", unique: true, using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", unique: true, using: :btree

  create_table "rel_grados_grupos", force: true do |t|
    t.integer  "grado_id",   null: false
    t.integer  "grupo_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_grados_grupos", ["grado_id", "grupo_id"], name: "index_rel_grados_grupos_on_grado_id_and_grupo_id", unique: true, using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "user_subjects", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "subject_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_subjects", ["user_id", "subject_id"], name: "index_user_subjects_on_user_id_and_subject_id", unique: true, using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask",             default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
