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

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
