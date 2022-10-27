class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.integer :country_id
      t.integer :customer_id
      t.string :name
      t.string :a

      t.timestamps
    end
  end
end
