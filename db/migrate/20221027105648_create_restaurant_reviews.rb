class CreateRestaurantReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_reviews do |t|
      
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :restaurant_price
      t.integer :restaurant_score
      t.integer :restaurant_content
      
      t.timestamps
    end
  end
end
