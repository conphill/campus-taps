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
  
  has_attached_file :banner_image, :styles => { :default => "300x300>" },
                    :url  => "/assets/posts/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"

  validates_attachment_size :banner_image, :less_than => 2.megabytes
  validates_attachment_content_type :banner_image, :content_type => ['image/jpeg', 'image/png']
  
  scope :recent, order("created_at DESC").limit(5)
  scope :published, where("published_at is NOT NULL").order("published_at DESC")
  scope :drafts, where("published_at is NULL").order("created_at DESC").limit(10)
end
