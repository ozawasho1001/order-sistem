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

ActiveRecord::Schema.define(version: 2021_03_26_104856) do

  # integer（4byte） のカラムが 5 個、string（255byte）が 2 個、id が bitgint（8byte）で
  # 少なくとも 538 byte の行になる。（datetime のサイズよくわからん）
  # ので、できれば string のカラムには出来る限り適切っぽい（足りるでしょう）くらいな limit を設定しておくほうがベター。
  create_table "cuisines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    # 「text」というカラム（プロパティ）だと「料理」というテーブルにおいてどういう役割を持ったものかわからない。
    # たとえば、「料理の作り方」かもしれないし、「料理の見どころ」かもしれない。
    # 用途がわからないカラムは開発者泣かせになるので気をつけること。
    t.string "text"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuisines_orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "orders_id", null: false, comment: "注文の参照"
    t.bigint "cuisines_id", null: false, comment: "商品の参照"
    t.index ["cuisines_id"], name: "index_cuisines_orders_on_cuisines_id"
    t.index ["orders_id"], name: "index_cuisines_orders_on_orders_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "payment_id"
    t.bigint "user_id", null: false
    t.integer "quantity"
    # 商品の名前はときとともに変化する可能性がある。
    # ので、注文された時点の情報をとっておく必要がある。（「スナップショット」などと言ったりする。）
    # こういう「過去のログ」は当時の情報である必要がることに気をつける。
    t.string "cuisine_name"
    t.integer "cuisine_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "pay"
    t.boolean "settled", default: false, null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "role", default: 1, null: false
    t.boolean "admin", default: false, null: false
  end

  add_foreign_key "cuisines_orders", "cuisines", column: "cuisines_id"
  add_foreign_key "cuisines_orders", "orders", column: "orders_id"
  add_foreign_key "orders", "users"
end
