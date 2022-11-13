class CreateGuesthouseComments < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_comments do |t|
      
      t.integer :guesthouse_review_id
      t.integer :customer_id
      t.string :content
      
      t.timestamps
    end
  end
end
