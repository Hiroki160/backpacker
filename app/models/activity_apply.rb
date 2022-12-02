class ActivityApply < ApplicationRecord
  belongs_to :customer
  belongs_to :activity_community
  enum status: {accept: 0, decline: 1, waiting: 2}
end
