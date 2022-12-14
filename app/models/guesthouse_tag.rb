class GuesthouseTag < ApplicationRecord
  has_many :guesthouse_relations, dependent: :destroy
  has_many :guesthouse_reviews, through: :guesthouse_relations
end
