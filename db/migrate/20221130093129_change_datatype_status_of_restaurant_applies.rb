class ChangeDatatypeStatusOfRestaurantApplies < ActiveRecord::Migration[6.1]
  def change
    change_column_default :restaurant_applies, :status, from: nil, to: "2"
  end
end
