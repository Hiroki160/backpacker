class ActivityCommunity < ApplicationRecord
  has_many :activity_applies, dependent: :destroy
  has_many :customers, through: :activity_applies
  has_many :activity_community_comments, dependent: :destroy
  belongs_to :activity
  belongs_to :customer

  validates :title, presence: true
  validates :body, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

end
