class AddRestaurantReviewIdToRestaurantRelation < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurant_relations, :restaurant_review_id, :integer
  end
end
