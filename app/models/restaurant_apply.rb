class RestaurantApply < ApplicationRecord
  belongs_to :customer
  belongs_to :restaurant_community
  enum status: {accept: 0, decline: 1, waiting: 2}
end
