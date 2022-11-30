class AddStatusToRestaurantApplies < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurant_applies, :status, :integer, from: nil, to: "2"
  end
end
