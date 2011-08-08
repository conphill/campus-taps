class AddGeocodesToBarsStores < ActiveRecord::Migration
  def self.up
    add_column :bars, :latitude, :float
    add_column :bars, :longitude, :float
    add_column :stores, :latitude, :float
    add_column :stores, :longitude, :float
  end

  def self.down
    remove_column :bars, :latitude
    remove_column :bars, :longitude
    remove_column :stores, :latitude
    remove_column :stores, :longitude
  end
end
