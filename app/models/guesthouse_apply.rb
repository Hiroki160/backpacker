class GuesthouseApply < ApplicationRecord
  belongs_to :customer
  belongs_to :guesthouse_community
  enum status: {accept: 0, decline: 1, waiting: 2}
end
