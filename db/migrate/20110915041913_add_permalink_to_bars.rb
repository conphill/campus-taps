class AddPermalinkToBars < ActiveRecord::Migration
  def self.up
    add_column :bars, :permalink, :string
    add_column :stores, :permalink, :string
  end

  def self.down
    remove_column :bars, :permalink
    remove_column :stores, :permalink
  end
end
