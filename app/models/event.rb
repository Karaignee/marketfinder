class Event < ActiveRecord::Base
  attr_accessible :end, :latitude, :location, :longitude, :repeat, :start, :title, :description
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
  
  validates :title, :presence => true
  
  validates :start, :format => {:with => /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[012])\/((19|20)[0-9]{2})$/i}
  
  validates :end, :format => {:with => /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[012])\/((19|20)[0-9]{2})$/i}
  
  validates :location, :presence => true
  
  validates :description, :presence => true
  
  # simple_calander requires a field called "start_time" but it's called "start" in our database
  # this function will map "start_time" to our real "start" field
  def start_time
    start
  end
end
