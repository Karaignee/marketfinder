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

class Event < ActiveRecord::Base
  attr_accessible :end, :latitude, :location, :longitude, :repeat, :start, :title, :description, :repeat_period, :repeat_period_id
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?

  validates :title, :presence => true

  validates :location, :presence => true

  validates :description, :presence => true

  belongs_to :repeat_period

  # simple_calender requires a field called "start_time" but it's called "start" in my database
  # this function will map "start_time" to the real "start" field
  def start_time
    start
  end
end
