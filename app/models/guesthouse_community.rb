class GuesthouseCommunity < ApplicationRecord
  has_many :guesthouse_applies, dependent: :destroy
  has_many :customers, through: :guesthouse_applies
  has_many :guesthouse_community_comments, dependent: :destroy
  belongs_to :guesthouse
  belongs_to :customer
end
