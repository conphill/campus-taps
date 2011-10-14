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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
