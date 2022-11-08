class GuesthouseRelation < ApplicationRecord
  belongs_to :guesthouse
  belongs_to :guesthouse_tag
end
