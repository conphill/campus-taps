class Product < ActiveRecord::Base
  belongs_to :store
  
  validates :name, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
end
