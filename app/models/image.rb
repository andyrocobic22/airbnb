class Image < ApplicationRecord
  has_many :rooms through: :room_image
end
