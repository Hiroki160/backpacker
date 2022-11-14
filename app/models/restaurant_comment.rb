class RestaurantComment < ApplicationRecord
  
  belongs_to :customer
  belongs_to :restaurant_review

end
