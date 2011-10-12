class College < ActiveRecord::Base
  belongs_to :state
  belongs_to :region
  
  has_attached_file :logo, :styles => { :small => "300x300>" },
                    :url => "/assets/colleges/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/colleges/:id/:style/:basename.:extension"
  
  validates_attachment_size :logo, :less_than => 3.megabytes
  validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png']
  attr_accessor :logo_file_name
  
  geocoded_by :geocode_address
  
  validates_presence_of :address
  
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
