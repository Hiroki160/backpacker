class CreateRestaurantRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_relations do |t|
      t.integer :restaurant_id
      t.integer :restaurant_tag_id
      t.timestamps
    end
    
    add_index :restaurant_relations, :restaurant_id
    add_index :restaurant_relations, :restaurant_tag_id
  end
end
