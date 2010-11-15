class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.integer :item_id
      t.integer :stock_use_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
