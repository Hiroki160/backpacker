class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :guesthouses, dependent: :destroy

    # レビュー機能
  has_many :guesthouse_reviews, dependent: :destroy
  has_one_attached :image

end
