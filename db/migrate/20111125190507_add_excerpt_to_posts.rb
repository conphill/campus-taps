class AddExcerptToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :excerpt, :string
    add_column :posts, :banner_image_caption, :string
  end

  def self.down
    remove_column :posts, :excerpt
    remove_column :posts, :banner_image_caption
  end
end