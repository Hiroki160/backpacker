class GuesthouseRelation < ApplicationRecord
  belongs_to :guesthouse_review
  belongs_to :guesthouse_tag
end
