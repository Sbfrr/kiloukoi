class Item < ActiveRecord::Base
  belongs_to :user
  has_many :pictures
  has_many :bookings
end
