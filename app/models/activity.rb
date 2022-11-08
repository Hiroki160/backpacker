class Activity < ApplicationRecord

  def minimum
    activity_reviews.minimum(:activity_price)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :country
  belongs_to :customer, optional: true

  # レビュー機能
  has_many :activity_reviews, dependent: :destroy
  has_one_attached :image

  #タグ
  has_many :activity_relations, dependent: :destroy
  has_many :activity_tags, through: :activity_relations

  validates :name, presence: true
  validates :address, presence: true

end
