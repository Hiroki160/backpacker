class ActivityRelation < ApplicationRecord
  belongs_to :activity
  belongs_to :activity_tag
end
