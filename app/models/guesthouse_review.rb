class GuesthouseReview < ApplicationRecord

  belongs_to :customer
  belongs_to :guesthouse
  has_one_attached :image

    validates :guesthouse_score, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
