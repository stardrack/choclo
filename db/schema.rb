# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_31_234710) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: :cascade do |t|
    t.string "titulo"
    t.string "contenido"
    t.date "autor"
    t.date "fecha"
    t.string "etiquetas"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.date "fecha"
    t.string "color"
    t.string "icono"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "contenido"
    t.string "autor"
    t.date "fecha"
    t.string "aprobado_por"
    t.string "respuesta"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inicios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.date "fecha"
    t.string "direccion"
    t.string "telefono"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "cliente"
    t.date "fecha"
    t.string "estado"
    t.string "productos"
    t.string "metodo"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "stock"
    t.string "marca"
    t.date "fecha"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
