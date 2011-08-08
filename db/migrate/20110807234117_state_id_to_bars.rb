class StateIdToBars < ActiveRecord::Migration
  def self.up
    rename_column :bars, :state, :state_id
    rename_column :stores, :state, :state_id
    add_column :bars, :region, :integer
    add_column :stores, :region, :integer
  end

  def self.down
    remove_column :bars, :region
    remove_column :stores, :region
  end
end
