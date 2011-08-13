class AddIndicesForStateAndRegion < ActiveRecord::Migration
  def self.up
    add_index :regions, :state_id
    add_index :restaurants, :region_id
  end

  def self.down
    remove_index :regions, :state_id
    remove_index :restaurants, :region_id
  end
end
