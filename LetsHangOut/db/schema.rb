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

ActiveRecord::Schema.define(version: 2019_04_08_204015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compras", force: :cascade do |t|
    t.float "valor"
    t.integer "personas"
    t.float "valorComun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_compras", force: :cascade do |t|
    t.bigint "compra_id"
    t.bigint "persona_id"
    t.bigint "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_detalle_compras_on_compra_id"
    t.index ["persona_id"], name: "index_detalle_compras_on_persona_id"
    t.index ["producto_id"], name: "index_detalle_compras_on_producto_id"
  end

  create_table "pagos", force: :cascade do |t|
    t.bigint "persona_id"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_pagos_on_persona_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre"
    t.float "saldo", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alias"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.float "precio"
    t.integer "porciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurante_id"
    t.index ["restaurante_id"], name: "index_productos_on_restaurante_id"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "detalle_compras", "compras"
  add_foreign_key "detalle_compras", "personas"
  add_foreign_key "detalle_compras", "productos"
  add_foreign_key "pagos", "personas"
  add_foreign_key "productos", "restaurantes"
end
