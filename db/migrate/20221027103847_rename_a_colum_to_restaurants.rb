class RenameAColumToRestaurants < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :a, :address
  end
end
