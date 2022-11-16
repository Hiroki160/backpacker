class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :guesthouses, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :activities, dependent: :destroy
  
  has_many :guesthouse_comments, dependent: :destroy
  has_many :restaurant_comments, dependent: :destroy
  has_many :activity_comments, dependent: :destroy

    # レビュー機能
  has_many :guesthouse_reviews, dependent: :destroy
  has_many :restaurant_reviews, dependent: :destroy
  has_one_attached :image
  
  #ゲストハウスコミュニティ
  has_many :guesthouse_applies, dependent: :destroy
  has_many :guesthouse_communities, through: :guesthouse_applies

  # is_deletedがfalseならtrueを返す
  def active_for_authentication?
    super && (is_deleted == false)
  end

end
