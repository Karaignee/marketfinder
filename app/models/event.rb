class Event < ActiveRecord::Base
  attr_accessible :end, :latitude, :location, :longitude, :repeat, :start, :title
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?


end
