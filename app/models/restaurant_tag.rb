class RestaurantTag < ApplicationRecord
  has_many :restaurant_relations, dependent: :destroy
  has_many :restaurant_reviews, through: :restaurant_relations

  validates :name, presence: true

end
