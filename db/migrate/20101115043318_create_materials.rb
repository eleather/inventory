class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.integer :material_type_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
