class Review < ActiveRecord::Base
  belongs_to :reviewable, :polymorphic => true
  belongs_to :user
  # has_one :user
  
  validates_presence_of :body, :user_id
end
