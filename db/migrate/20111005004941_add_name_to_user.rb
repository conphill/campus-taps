class AddNameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :facebook_id, :integer
    add_column :users, :school_name, :string
  end

  def self.down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :facebook_id
    remove_column :users, :school_name
  end
end
