class Guesthouse < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :country
  belongs_to :customer, optional: true
  
  # レビュー機能
  has_many :guesthouse_reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :address, presence: true


end
