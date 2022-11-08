class RestaurantTag < ApplicationRecord
  has_many :restaurant_relations, dependent: :destroy
  has_many :restaurants, through: :restaurant_relations
end
