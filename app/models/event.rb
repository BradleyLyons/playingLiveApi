class Event < ActiveRecord::Base
  # attr_accessor :venue_id
  
  belongs_to :venue
  has_many :event_item
  has_many :band, :through => :event_item
end
