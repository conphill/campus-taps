class IndexPermalinks < ActiveRecord::Migration
  def self.up
    add_index :bars, :permalink
    add_index :stores, :permalink
    add_index :restaurants, :permalink
    add_index :colleges, :permalink
  end

  def self.down
    remove_index :bars, :permalink
    remove_index :stores, :permalink
    remove_index :restaurants, :permalink
    remove_index :colleges, :permalink
  end
end
