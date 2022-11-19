class RestaurantComment < ApplicationRecord

  belongs_to :customer
  belongs_to :restaurant_review

  validates :content, presence: true

end
