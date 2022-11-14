class ChangeDatatypeContentOfRestaurantComment < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurant_comments, :content, :string
  end
end
