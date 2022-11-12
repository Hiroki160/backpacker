class AddIndexRestaurantRelationRestaurantReviewId < ActiveRecord::Migration[6.1]
  def change
    add_index :restaurant_relations, :restaurant_review_id
  end
end
