class Category < ApplicationRecord
  has_many :buildings through: :category_building
end
