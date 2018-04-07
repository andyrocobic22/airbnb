class CategoryBuilding < ApplicationRecord
  belongs_to :category
  belongs_to :building
end
