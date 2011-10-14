# == Schema Information
#
# Table name: stores
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  address     :string(255)
#  city        :string(255)
#  state_id    :integer(4)
#  zip         :string(255)
#  phone       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  region_id   :integer(4)
#  email       :string(255)
#  latitude    :float
#  longitude   :float
#  permalink   :string(255)
#

class Store < ActiveRecord::Base
  belongs_to :state
  belongs_to :region  
  has_many :products
  
  geocoded_by :geocode_address
  validates_presence_of :name, :address
  
  before_save :make_permalink
  before_update :make_permalink
  after_validation :geocode
      
  def to_param
    "#{name.parameterize}-#{region.name.parameterize}"
  end    
      
  def geocode_address
    address + ", " + city + ", " + self.state.state_abbr
  end
  
  private
    def make_permalink
      self.permalink = name.parameterize+"-"+region.name.parameterize
    end
    
end
