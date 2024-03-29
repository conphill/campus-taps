class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :admin_id
      t.string :permalink

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
