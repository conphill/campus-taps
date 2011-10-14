# == Schema Information
#
# Table name: posts
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  body         :text
#  admin_id     :integer(4)
#  permalink    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  published_at :datetime
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
