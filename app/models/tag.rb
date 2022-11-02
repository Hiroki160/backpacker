class Tag < ApplicationRecord
  before_save :downcase_tag_name

  has_many :post_tags, dependent: :destroy
  has_many :posts, through: :post_tags

  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  
  private
  
  def downcase_tag_name
   self.name.downcase
  end
end
