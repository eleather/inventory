class AddColorToMaterials < ActiveRecord::Migration
  def self.up
    add_column :materials, :color, :string
  end

  def self.down
    remove_column :materials, :color
  end
end
