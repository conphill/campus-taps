class Restaurant < ActiveRecord::Base
  belongs_to :region
  
  geocoded_by :address
  validates_presence_of :region
  
  before_save :make_permalink
  before_update :make_permalink
  after_validation :geocode, :if => :address_changed?

  def to_param
    "#{name.parameterize}-#{region.name.parameterize}"
  end
  
  private
    def make_permalink
      self.permalink = name.parameterize+"-"+region.name.parameterize
    end
end
