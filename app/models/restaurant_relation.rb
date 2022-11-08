class RestaurantRelation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant_tag
end

