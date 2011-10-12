class AddSpecialsToBars < ActiveRecord::Migration
  def self.up
    add_column :bars, :specials, :text
  end

  def self.down
    remove_column :bars, :specials
  end
end
