class Store < ActiveRecord::Base
  belongs_to :state
  belongs_to :region  
  
  geocoded_by :geocode_address
  
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
      self.permalink = name.parameterize
    end
    
end
