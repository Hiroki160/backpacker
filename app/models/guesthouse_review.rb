class GuesthouseReview < ApplicationRecord
  
  belongs_to :customer
  belongs_to :guesthouse
  has_one_attached :image
end
