class AddProductNumberToMaterialsAndStocks < ActiveRecord::Migration
  def self.up
    add_column :materials, :product_number, :string
    add_column :stocks, :product_number, :string
  end

  def self.down
    remove_column :materials, :product_number
    remove_column :stocks, :product_number
  end
end
