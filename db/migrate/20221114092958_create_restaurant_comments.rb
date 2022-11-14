class CreateRestaurantComments < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_comments do |t|
      
      t.integer :restaurant_review_id
      t.integer :customer_id
      t.integer :content
      
      t.timestamps
    end
  end
end
