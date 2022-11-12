class RestaurantRelation < ApplicationRecord
  belongs_to :restaurant_review
  belongs_to :restaurant_tag
end

