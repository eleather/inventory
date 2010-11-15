# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101115061947) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "components", :force => true do |t|
    t.integer  "item_id"
    t.integer  "stock_use_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "item_number"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.integer  "material_type_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
    t.string   "product_number"
  end

  create_table "products", :force => true do |t|
    t.integer  "product_type_id"
    t.string   "name"
    t.string   "product_number"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stock_uses", :force => true do |t|
    t.integer  "stock_id"
    t.string   "name"
    t.integer  "use_type_id"
    t.string   "amount"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", :force => true do |t|
    t.integer  "material_id"
    t.string   "name"
    t.integer  "amount_type_id"
    t.string   "amount"
    t.date     "purchased_at"
    t.integer  "purchase_location_id"
    t.float    "purchase_amount"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "product_number"
  end

  create_table "types", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
