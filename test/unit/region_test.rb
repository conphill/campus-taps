# == Schema Information
#
# Table name: regions
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  state_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
