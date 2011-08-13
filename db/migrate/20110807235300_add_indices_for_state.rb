class AddIndicesForState < ActiveRecord::Migration
  def self.up
    add_index :bars, :state_id
    add_index :stores, :state_id
  end

  def self.down
    remove_index :bars, :state_id
    remove_index :stores, :state_id
  end
end
