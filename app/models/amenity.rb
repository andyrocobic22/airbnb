class Amenity < ApplicationRecord
  has_many :rooms through: :room_amenity
end
