class Post < ActiveRecord::Base
  validates_presence_of :title, :body
  
  scope :recent, order("created_at DESC").limit(5)
  scope :published, where("published_at is NOT NULL").order("published_at DESC")
  scope :drafts, where("published_at is NULL").order("created_at DESC")
end
