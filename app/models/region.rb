# == Schema Information
#
# Table name: regions
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  state_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

class Region < ActiveRecord::Base
  belongs_to :state
  
  before_save :make_permalink
  before_update :make_permalink
  
  def to_param
    "#{name.parameterize}"
  end
  
  private
    def make_permalink
      self.permalink = name.parameterize
    end
end
