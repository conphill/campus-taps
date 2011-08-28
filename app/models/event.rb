class Event < ActiveRecord::Base
  has_attached_file :flyer, :styles => { :small => "300x300>" },
                    :url => "/assets/events/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/events/:id/:style/:basename.:extension"
  
  validates_attachment_size :flyer, :less_than => 5.megabytes
  validates_attachment_content_type :flyer, :content_type => ['image/jpeg', 'image/png']
end
