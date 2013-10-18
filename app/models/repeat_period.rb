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

class RepeatPeriod < ActiveRecord::Base
  attr_accessible :daily, :every_x, :name, :days

  has_one :event
end
