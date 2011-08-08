class State < ActiveRecord::Base
  has_many :bars
  has_many :stores
  has_many :regions
end
