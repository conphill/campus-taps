# == Schema Information
#
# Table name: restaurants
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  address    :string(255)
#  phone      :string(255)
#  hours      :string(255)
#  region_id  :integer(4)
#  latitude   :float
#  longitude  :float
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

class Restaurant < ActiveRecord::Base
  belongs_to :region
  has_many :reviews, :as => :reviewable, :dependent => :destroy
  
  geocoded_by :address
  validates_presence_of :name, :address
  
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
