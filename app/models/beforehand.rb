class Beforehand < ApplicationRecord
  has_many :rooms through: :room_beforehand
end
