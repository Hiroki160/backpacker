class GuesthouseComment < ApplicationRecord

  belongs_to :customer
  belongs_to :guesthouse_review

  validates :content, presence: true

end


