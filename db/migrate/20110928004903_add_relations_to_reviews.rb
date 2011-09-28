class AddRelationsToReviews < ActiveRecord::Migration
  def self.up
    remove_column :reviews, :bar_id
    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
    add_index :reviews, [:reviewable_id,:reviewable_type]
  end

  def self.down
    remove_index :reviews, [:reviewable_id,:reviewable_type]
    remove_column :reviews, :reviewable_id
    remove_column :reviews, :reviewable_type  
  end
end
