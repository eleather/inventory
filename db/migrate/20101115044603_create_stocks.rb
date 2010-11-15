class CreateStocks < ActiveRecord::Migration
  def self.up
    create_table :stocks do |t|
      t.integer :material_id
      t.string :name
      t.integer :amount_type_id
      t.string :amount
      t.date :purchased_at
      t.integer :purchase_location_id
      t.float :purchase_amount
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :stocks
  end
end
