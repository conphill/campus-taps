class AddEasyRolesToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :roles, :string, :default => "--- []"
  end

  def self.down
    remove_column :admins, :roles
  end
end
