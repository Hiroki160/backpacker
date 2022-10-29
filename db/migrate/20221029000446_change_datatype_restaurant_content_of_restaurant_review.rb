class ChangeDatatypeRestaurantContentOfRestaurantReview < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurant_review, :restaurant_content, :string
  end
end
