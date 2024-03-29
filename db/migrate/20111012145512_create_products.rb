class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :product_category_id
      t.integer :store_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
