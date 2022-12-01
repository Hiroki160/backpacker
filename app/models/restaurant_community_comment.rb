class RestaurantCommunityComment < ApplicationRecord
  belongs_to :restaurant_community
  belongs_to :customer
  validates :body, presence: true 
end
