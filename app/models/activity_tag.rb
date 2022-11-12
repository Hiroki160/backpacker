class ActivityTag < ApplicationRecord
  has_many :activity_relations, dependent: :destroy
  has_many :activity_reviews, through: :activity_relations
end
