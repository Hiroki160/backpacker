class GuesthouseReview < ApplicationRecord

  belongs_to :customer
  belongs_to :guesthouse
  has_one_attached :image

  #タグ
  has_many :guesthouse_relations, dependent: :destroy
  has_many :guesthouse_tags, through: :guesthouse_relations
  has_many :guesthouse_comments, dependent: :destroy

    validates :guesthouse_score, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

  # validates :guesthouse_price, presence: true

  validates :guesthouse_price, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 }, format: { with: /\A[0-9]+\z/ }
  validates :guesthouse_content, presence: true

end
