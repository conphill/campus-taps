class CreateProductCategories < ActiveRecord::Migration
  def self.up
    create_table :product_categories do |t|
      t.column :name, :string

      t.timestamps
    end

  pc = ProductCategory.create([
                      { :name => "Beer" },
                      { :name => "Vodka"},
                      { :name => "Rum" },
                      { :name => "Tequila"},
                      { :name => "Whiskey" },
                      { :name => "Wine"}])
  end

  def self.down
    drop_table :product_categories
  end
end
