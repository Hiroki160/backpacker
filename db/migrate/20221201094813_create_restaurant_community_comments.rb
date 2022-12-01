class CreateRestaurantCommunityComments < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_community_comments do |t|
      t.integer :customer_id
      t.integer :restaurant_community_id
      t.text :body
      t.timestamps
    end
  end
end
