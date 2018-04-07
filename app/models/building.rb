class Building < ApplicationRecord
  has_many :categories through: :category_building
end
