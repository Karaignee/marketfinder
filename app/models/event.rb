class Event < ActiveRecord::Base
  attr_accessible :end, :latitude, :location, :longitude, :repeat, :start, :title, :description
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
  
  # simple_calander requires a field called "start_time" but it's called "start" in our database
  # this function will map "start_time" to our real "start" field
  def start_time
    start
  end
end
