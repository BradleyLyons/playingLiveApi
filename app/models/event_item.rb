class EventItem < ActiveRecord::Base
  belongs_to :band
  belongs_to :event
end
