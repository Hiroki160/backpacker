class RestaurantReview < ApplicationRecord

  belongs_to :customer
  belongs_to :restaurant
  has_one_attached :image

  #   validates :restaurant_score, numericality: {
  #   less_than_or_equal_to: 5,
  #   greater_than_or_equal_to: 1
  # }, presence: true

end
