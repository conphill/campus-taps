class Review < ActiveRecord::Base
  belongs_to :bar
  # has_one :user
end
