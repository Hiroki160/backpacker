class GuesthouseCommunity < ApplicationRecord
  has_many :guesthouse_applies, dependent: :destroy
  has_many :customers, through: :guesthouse_applies
  has_many :guesthouse_community_comments, dependent: :destroy
  belongs_to :guesthouse
  belongs_to :customer
  
  validates :title, presence: true
  validates :body, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
