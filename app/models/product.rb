# == Schema Information
#
# Table name: products
#
#  id                  :integer(4)      not null, primary key
#  brand               :string(255)
#  name                :string(255)
#  price               :integer(10)
#  product_category_id :integer(4)
#  store_id            :integer(4)
#  created_at          :datetime
#  updated_at          :datetime
#

class Product < ActiveRecord::Base
  belongs_to :store
  belongs_to :product_category
  
  validates :name, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
end
