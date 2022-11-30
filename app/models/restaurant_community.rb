class RestaurantCommunity < ApplicationRecord
  has_many :restaurant_applies, dependent: :destroy
  has_many :customers, through: :restaurant_applies
  has_many :restaurant_community_comments, dependent: :destroy
  belongs_to :restaurant
  belongs_to :customer
end
