# == Schema Information
#
# Table name: posts
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  body         :text
#  admin_id     :integer(4)
#  permalink    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  published_at :datetime
#

class Post < ActiveRecord::Base
  has_many :blog_photos
  accepts_nested_attributes_for :blog_photos, :allow_destroy => true
  validates_presence_of :title, :body
  
  scope :recent, order("created_at DESC").limit(5)
  scope :published, where("published_at is NOT NULL").order("published_at DESC")
  scope :drafts, where("published_at is NULL").order("created_at DESC").limit(10)
end
