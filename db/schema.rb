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

ActiveRecord::Schema.define(version: 20140313004112) do


  create_table "asignaturas", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asistencias", force: true do |t|
    t.boolean  "presente",   default: true
    t.integer  "perfil_id",                 null: false
    t.integer  "grupo_id",                  null: false
    t.integer  "grado_id",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asistencias", ["grado_id", "grupo_id", "perfil_id"], name: "index_asistencias_on_grado_id_and_grupo_id_and_perfil_id", unique: true, using: :btree


  create_table "calificaciones", force: true do |t|
    t.string   "calificacion_ordinaria"
    t.string   "calificacion_remedial"
    t.string   "calificacion_extraordinaria"
    t.string   "calificacion_final"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carrera_docentes", force: true do |t|
    t.integer  "carrera_id", null: false
    t.integer  "docente_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carrera_docentes", ["carrera_id", "docente_id"], name: "index_carrera_docentes_on_carrera_id_and_docente_id", unique: true, using: :btree

  create_table "carreras", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consejeros", force: true do |t|
    t.integer  "carrera_id"
    t.integer  "grupo_id"
    t.integer  "grado_id"
    t.integer  "perfil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "criterio_indicadores", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.boolean  "estado"
    t.string   "type"
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

  create_table "libros", force: true do |t|
    t.string   "nombre"
    t.string   "editorial"
    t.string   "autor"
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfiles", force: true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "numero_control"
    t.date     "fecha_nacimiento"
    t.string   "estado_civil"
    t.string   "sexo"
    t.integer  "cp"
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
    t.string   "situacion"
    t.string   "turno"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",                             null: false
    t.integer  "grupo_id",                            null: false
    t.integer  "carrera_id",                          null: false
    t.boolean  "tsu_ingenieria",      default: false
    t.integer  "grado_id",                            null: false
  end

  add_index "perfiles", ["grado_id"], name: "index_perfiles_on_grado_id", unique: true, using: :btree
  add_index "perfiles", ["user_id", "grupo_id", "carrera_id"], name: "index_perfiles_on_user_id_and_grupo_id_and_carrera_id", unique: true, using: :btree

  create_table "prestamo_libros", force: true do |t|
    t.decimal  "multa_dia",   precision: 10, scale: 0
    t.string   "comentarios"
    t.integer  "perfil_id",                            null: false
    t.integer  "libro_id",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prestamo_libros", ["perfil_id", "libro_id"], name: "index_prestamo_libros_on_perfil_id_and_libro_id", unique: true, using: :btree

  create_table "rel_grado_grupos", force: true do |t|
    t.integer  "grado_id",   null: false
    t.integer  "grupo_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_grado_grupos", ["grado_id", "grupo_id"], name: "index_rel_grado_grupos_on_grado_id_and_grupo_id", unique: true, using: :btree

  create_table "tutorias", force: true do |t|
    t.integer  "mes1"
    t.integer  "mes2"
    t.integer  "mes3"
    t.integer  "mes4"
    t.integer  "grado_id"
    t.integer  "grupo_id"
    t.integer  "perfil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_asignaturas", force: true do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_asignaturas", ["user_id", "subject_id"], name: "index_user_asignaturas_on_user_id_and_subject_id", unique: true, using: :btree

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

end
