# == Schema Information
#
# Table name: repeat_periods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  every_x    :integer
#  daily      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RepeatPeriodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
