class GuesthouseCommunityComment < ApplicationRecord
  belongs_to :guesthouse_community
  belongs_to :customer
  
  validates :body, presence: true 
end
