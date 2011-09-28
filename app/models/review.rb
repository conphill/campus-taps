class Review < ActiveRecord::Base
  belongs_to :reviewable, :polymorphic => true
  # has_one :user
end
