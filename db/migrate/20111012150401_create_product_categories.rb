class CreateProductCategories < ActiveRecord::Migration
  def self.up
    create_table :product_categories do |t|
      t.column name, :string

      t.timestamps
    end
  end

  def self.down
    drop_table :product_categories
  end
end