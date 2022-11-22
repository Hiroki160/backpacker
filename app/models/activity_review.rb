class ActivityReview < ApplicationRecord


  belongs_to :customer
  belongs_to :activity
  has_one_attached :image

  #タグ
  has_many :activity_relations, dependent: :destroy
  has_many :activity_tags, through: :activity_relations
  has_many :activity_comments, dependent: :destroy

    validates :activity_score, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

  validates :activity_price, presence: true
  validates :activity_content, presence: true

end
