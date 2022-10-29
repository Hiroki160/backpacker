class CreateActivityReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_reviews do |t|
      
      t.integer :customer_id
      t.integer :activity_id
      t.integer :activity_price
      t.integer :activity_score
      t.string :activity_content
      
      t.timestamps
    end
  end
end
