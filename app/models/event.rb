# == Schema Information
#
# Table name: events
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  date               :datetime
#  description        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  flyer_file_name    :string(255)
#  flyer_content_type :string(255)
#  flyer_file_size    :integer(4)
#  flyer_updated_at   :datetime
#  bar_id             :integer(4)
#

class Event < ActiveRecord::Base
  belongs_to :bar
  
  has_attached_file :flyer, :styles => { :small => "300x300>" },
                    :url => "/assets/events/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/events/:id/:style/:basename.:extension"
  
  validates_attachment_size :flyer, :less_than => 3.megabytes
  validates_attachment_content_type :flyer, :content_type => ['image/jpeg', 'image/png']
end
