class Bar < ActiveRecord::Base
  belongs_to :state
  belongs_to :region
  has_one :manager
  has_many :reviews, :as => :reviewable, :dependent => :destroy
  has_many :events, :dependent => :destroy
  
  has_attached_file :logo, :styles => { :small => "300x300>" },
                    :url => "/assets/bars/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/bars/:id/:style/:basename.:extension"
  
  validates_attachment_size :logo, :less_than => 3.megabytes
  validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png']
  
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
      self.permalink = name.parameterize+"-"+region.name.parameterize
    end
  
end
