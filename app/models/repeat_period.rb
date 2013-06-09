class RepeatPeriod < ActiveRecord::Base
  attr_accessible :daily, :every_x, :name, days:

  has_one :event
end
