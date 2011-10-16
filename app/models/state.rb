# == Schema Information
#
# Table name: states
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  state_abbr :string(255)
#

class State < ActiveRecord::Base
  has_many :bars
  has_many :stores
  has_many :regions
end
