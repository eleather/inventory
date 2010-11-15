class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :product_type_id
      t.string :name
      t.string :product_number
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
