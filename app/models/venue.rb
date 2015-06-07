class Venue < ActiveRecord::Base
  # attr_accessor :id
  
  belongs_to :user
  has_many :event
  has_many :event_item, :through => :event
  has_many :band, :through => :event_item
  
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode


end