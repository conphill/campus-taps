# == Schema Information
#
# Table name: stores
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  address     :string(255)
#  city        :string(255)
#  state_id    :integer(4)
#  zip         :string(255)
#  phone       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  region_id   :integer(4)
#  email       :string(255)
#  latitude    :float
#  longitude   :float
#  permalink   :string(255)
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
