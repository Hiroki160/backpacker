class ChangeDatatypeRestaurantContentOfRestaurantReviews < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurant_reviews, :restaurant_content, :string
  end
end
