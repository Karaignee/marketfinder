# == Schema Information
#
# Table name: events
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  start            :datetime(255)
#  end              :datetime(255)
#  repeat           :integer
#  location         :string(255)
#  longitude        :float
#  latitude         :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  description      :text
#  repeat_period_id :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
