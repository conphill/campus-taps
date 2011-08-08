class Bar < ActiveRecord::Base
  belongs_to :state
  belongs_to :region
  
  # attr_accessible :full_address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  def full_address
    address + ", " + city + ", " + self.state.state_abbr
  end
end
