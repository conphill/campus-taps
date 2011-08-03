class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.integer :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
