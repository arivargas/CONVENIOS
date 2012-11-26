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

ActiveRecord::Schema.define(:version => 20121123024140) do

  create_table "becas", :force => true do |t|
    t.string   "titulo"
    t.string   "institucion"
    t.string   "duracion"
    t.string   "periodo"
    t.string   "programa"
    t.string   "modalidad"
    t.string   "idioma"
    t.string   "beneficios"
    t.string   "requisitos"
    t.date     "fch_limite"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "convenios", :force => true do |t|
    t.string   "titulo"
    t.string   "pais"
    t.string   "institucion"
    t.string   "vigencia"
    t.string   "carreras"
    t.string   "duracion"
    t.string   "modalidad"
    t.string   "idioma"
    t.string   "beneficios"
    t.string   "requisitos"
    t.string   "datos_adjuntos"
    t.integer  "TipoConvenio_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "convenios", ["TipoConvenio_id"], :name => "index_convenios_on_TipoConvenio_id"

  create_table "experiencia", :force => true do |t|
    t.string   "nombre"
    t.string   "titulo"
    t.string   "comentario"
    t.string   "periodo"
    t.string   "pais"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "sitios", :force => true do |t|
    t.string   "nombre"
    t.string   "enlace"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_convenios", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "universidads", :force => true do |t|
    t.string   "nombre"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
