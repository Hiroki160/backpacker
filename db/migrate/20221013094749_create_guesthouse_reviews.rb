class CreateGuesthouseReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_reviews do |t|

      t.integer :customer_id
      t.integer :guesthouse_id
      t.integer :guesthouse_price
      t.integer :guesthouse_score
      t.string :guesthouse_content

      t.timestamps
    end
  end
end
