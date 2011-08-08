class AddRegionAndEmailToBarsStores < ActiveRecord::Migration
  def self.up
    add_column :bars, :region_id, :integer
    add_column :bars, :email, :string
    add_column :stores, :region_id, :integer
    add_column :stores, :email, :string
  end

  def self.down
    remove_column :bars, :region_id
    remove_column :bars, :email
    remove_column :stores, :region_id
    remove_column :stores, :email
  end
end
