class ActivityTag < ApplicationRecord
  has_many :activity_relations, dependent: :destroy
  has_many :activities, through: :activity_relations
end
