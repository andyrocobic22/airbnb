class Room < ApplicationRecord
  has_many :bed_rooms
  has_many :addresses
  has_many :house_rules
  has_many :images through: :room_image
  has_many :situations through: :room_situation
  has_many :amenities through: :room_amenity
  has_many :spaces through: :rooms_space
  has_many :add_orders through: :room_add_order
  has_many :beforehands through: :room_beforehand
end
