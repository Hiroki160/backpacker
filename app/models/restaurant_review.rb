class RestaurantReview < ApplicationRecord

  belongs_to :customer
  belongs_to :restaurant
  has_one_attached :image

  #タグ
  has_many :restaurant_relations, dependent: :destroy
  has_many :restaurant_tags, through: :restaurant_relations
  
    validates :restaurant_score, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
