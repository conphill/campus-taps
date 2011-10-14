class CreateBlogPhotos < ActiveRecord::Migration
  def self.up
    create_table :blog_photos do |t|
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_photos
  end
end
