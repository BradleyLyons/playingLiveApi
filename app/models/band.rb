class Band < ActiveRecord::Base
  belongs_to :genre
  belongs_to :user
  has_many :event_item
  has_many :event, :through => :event_item
end
