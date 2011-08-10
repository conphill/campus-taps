class Restaurant < ActiveRecord::Base
  belongs_to :region
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
