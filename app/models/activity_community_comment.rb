class ActivityCommunityComment < ApplicationRecord
  belongs_to :activity_community
  belongs_to :customer
  validates :body, presence: true
end
