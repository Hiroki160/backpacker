class RestaurantCommunity < ApplicationRecord
  has_many :restaurant_applies, dependent: :destroy
  has_many :customers, through: :restaurant_applies
  has_many :restaurant_community_comments, dependent: :destroy
  belongs_to :restaurant
  belongs_to :customer
  
  validates :title, presence: true
  validates :body, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
