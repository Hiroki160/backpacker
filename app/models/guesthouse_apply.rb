class GuesthouseApply < ApplicationRecord
  belongs_to :customer
  belongs_to :guesthouse_community
end
