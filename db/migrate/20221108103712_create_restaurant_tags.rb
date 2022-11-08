class CreateRestaurantTags < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
