class GuesthouseComment < ApplicationRecord

  belongs_to :customer
  belongs_to :guesthouse_review

end
