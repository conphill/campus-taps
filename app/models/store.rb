class Store < ActiveRecord::Base
  belongs_to :state
  belongs_to :region  
  
  geocoded_by :geocode_address
  after_validation :geocode, :if => :address_changed?
      
  def geocode_address
    address + ", " + city + ", " + self.state.state_abbr
  end
end
