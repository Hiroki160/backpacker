class Restaurant < ApplicationRecord

  # def avg_score
  #   unless self.restaurant_reviews.empty?
  #   restaurant_reviews.average(:restaurant_score).floor
  #   else
  #     0.0
  #   end
  # end

  def minimum
    restaurant_reviews.minimum(:restaurant_price)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :country
  belongs_to :customer, optional: true

  # レビュー機能
  has_many :restaurant_reviews, dependent: :destroy
  has_one_attached :image
  
  #タグ
  # has_many :restaurant_relations, dependent: :destroy
  # has_many :restaurant_tags, through: :restaurant_relations

  validates :name, presence: true
  validates :address, presence: true
  
  #コミュニティ
  has_many :restaurant_communities, dependent: :destroy

end
