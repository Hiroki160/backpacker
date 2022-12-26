class Guesthouse < ApplicationRecord

  def avg_score
    unless self.guesthouse_reviews.empty?
     guesthouse_reviews.average(:guesthouse_score).floor
    else
      0.0
    end
  end

  def minimum
    guesthouse_reviews.minimum(:guesthouse_price)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :country
  belongs_to :customer, optional: true

  # レビュー機能
  has_many :guesthouse_reviews, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :address, presence: true

  #コミュニティ
  has_many :guesthouse_communities, dependent: :destroy
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  


end
