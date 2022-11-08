class GuesthouseTag < ApplicationRecord
  has_many :guesthouse_relations, dependent: :destroy
  has_many :guesthouses, through: :guesthouse_relations
end
