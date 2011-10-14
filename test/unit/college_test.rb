# == Schema Information
#
# Table name: colleges
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  address    :string(255)
#  city       :string(255)
#  region_id  :integer(4)
#  state_id   :integer(4)
#  zip        :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

require 'test_helper'

class CollegeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
