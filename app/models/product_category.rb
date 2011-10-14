# == Schema Information
#
# Table name: product_categories
#
#  id                      :integer(4)      not null, primary key
#  CreateProductCategories :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#

class ProductCategory < ActiveRecord::Base
end
