class ActivityComment < ApplicationRecord
  
  belongs_to :customer
  belongs_to :activity_review
  
end
