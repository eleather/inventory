class CreateStockUses < ActiveRecord::Migration
  def self.up
    create_table :stock_uses do |t|
      t.integer :stock_id
      t.string :name
      t.integer :use_type_id
      t.string :amount
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :stock_uses
  end
end
