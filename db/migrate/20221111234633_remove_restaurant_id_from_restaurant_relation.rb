class RemoveRestaurantIdFromRestaurantRelation < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurant_relations, :restaurant_id, :integer
  end
end
