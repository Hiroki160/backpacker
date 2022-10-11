class Guesthouse < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  # belongs_to_active_hash :country
  belongs_to :customer, optional: true

end
