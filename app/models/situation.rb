class Situation < ApplicationRecord
  has_many :rooms through: :room_situation
end
