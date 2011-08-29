class AddBarToManagers < ActiveRecord::Migration
  def self.up
    add_column :managers, :bar_id, :integer
    add_index :managers, :bar_id
  end
  
  def self.down
    remove_column :managers, :bar_id
  end
end
