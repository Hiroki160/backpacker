class GuesthouseCommunity < ApplicationRecord
  has_many :guesthouse_applies, dependent: :destroy
  has_many :customers, through: :guesthouse_applies
  belongs_to :guesthouse
  belongs_to :customer
end
