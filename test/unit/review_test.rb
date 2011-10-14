# == Schema Information
#
# Table name: reviews
#
#  id              :integer(4)      not null, primary key
#  body            :text
#  user_id         :integer(4)
#  rating          :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#  reviewable_id   :integer(4)
#  reviewable_type :string(255)
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
