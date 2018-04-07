class Space < ApplicationRecord
  has_many :rooms through: :room_space
end
