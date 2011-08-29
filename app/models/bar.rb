class Bar < ActiveRecord::Base
  belongs_to :state
  belongs_to :region
  has_one :manager
  has_many :reviews
  has_many :events
  
  geocoded_by :geocode_address
  after_validation :geocode
  
  def geocode_address
    address + ", " + city + ", " + self.state.state_abbr
  end
end
