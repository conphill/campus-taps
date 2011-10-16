# == Schema Information
#
# Table name: reviews
#
#  id              :integer(4)      not null, primary key
#  body            :text
#  user_id         :integer(4)
#  rating          :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#  reviewable_id   :integer(4)
#  reviewable_type :string(255)
#

class Review < ActiveRecord::Base
  belongs_to :reviewable, :polymorphic => true
  belongs_to :user
  # has_one :user
  
  validates_presence_of :body, :user_id
end
