class Post < ApplicationRecord
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  
  def save_tags(tag_list)
    tag_list.each do |tag| 
      unless find_tag = Tag.find_by(name: tag.downcase)
        begin
          self.tags.create!(name: tag)
        rescue
          nil
        end
      else
        
        PostTag.create!(post_id: self.id, tag_id: find_tag.id)
      end
   end
  end
end
