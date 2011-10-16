# == Schema Information
#
# Table name: events
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  date               :datetime
#  description        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  flyer_file_name    :string(255)
#  flyer_content_type :string(255)
#  flyer_file_size    :integer(4)
#  flyer_updated_at   :datetime
#  bar_id             :integer(4)
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
