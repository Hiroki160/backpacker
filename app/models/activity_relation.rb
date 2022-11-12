class ActivityRelation < ApplicationRecord
  belongs_to :activity_review
  belongs_to :activity_tag
end
