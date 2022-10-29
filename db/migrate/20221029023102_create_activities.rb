class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :country_id
      t.integer :customer_id
      t.string :name
      t.string :address
      
      t.timestamps
    end
  end
end
