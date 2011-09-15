class AddPermalinkToAllModels < ActiveRecord::Migration
  def self.up
    add_column :regions, :permalink, :string
    add_column :colleges, :permalink, :string
  end

  def self.down
    remove_column :regions, :permalink
    remove_column :colleges, :permalink
  end
end
