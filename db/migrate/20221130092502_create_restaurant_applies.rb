class CreateRestaurantApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_applies do |t|
      
      t.integer :customer_id
      t.integer :restaurant_community_id

      t.timestamps
    end
  end
end
