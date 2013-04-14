class Event < ActiveRecord::Base
  attr_accessible :end, :latitude, :location, :longitude, :repeat, :start, :title, :description
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end
