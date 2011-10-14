# == Schema Information
#
# Table name: bars
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  description       :text
#  address           :string(255)
#  city              :string(255)
#  state_id          :integer(4)
#  zip               :string(255)
#  phone             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  region_id         :integer(4)
#  email             :string(255)
#  latitude          :float
#  longitude         :float
#  permalink         :string(255)
#  specials          :text
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer(4)
#  logo_updated_at   :datetime
#

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
  validates_presence_of :name, :address
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
