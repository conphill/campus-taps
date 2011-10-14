# == Schema Information
#
# Table name: bars
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  description       :text
#  address           :string(255)
#  city              :string(255)
#  state_id          :integer(4)
#  zip               :string(255)
#  phone             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  region_id         :integer(4)
#  email             :string(255)
#  latitude          :float
#  longitude         :float
#  permalink         :string(255)
#  specials          :text
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer(4)
#  logo_updated_at   :datetime
#

require 'test_helper'

class BarTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
