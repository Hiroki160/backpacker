class Restaurant < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :country
  belongs_to :customer, optional: true

  # レビュー機能
  has_many :restaurant_reviews, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :address, presence: true
  
end
