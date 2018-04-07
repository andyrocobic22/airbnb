class AddOrder < ApplicationRecord
  has_many :rooms through: :room_add_order
end
