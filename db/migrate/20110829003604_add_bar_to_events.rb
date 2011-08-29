class AddBarToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :bar_id, :integer
    add_index :events, :bar_id
  end

  def self.down
    remove_column :events, :bar_id
  end
end
