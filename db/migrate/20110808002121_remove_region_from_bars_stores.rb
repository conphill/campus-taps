class RemoveRegionFromBarsStores < ActiveRecord::Migration
  def self.up
    remove_column :bars, :region
    remove_column :stores, :region
  end

  def self.down
  end
end
