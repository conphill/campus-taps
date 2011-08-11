class CreateColleges < ActiveRecord::Migration
  def self.up
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :region_id
      t.integer :state_id
      t.string :zip
      t.float :latitude
      t.float :longitude
      
      t.timestamps
    end
    
    add_index :colleges, :region_id
    add_index :colleges, :state_id
  end

  def self.down
    drop_table :colleges
  end
end
