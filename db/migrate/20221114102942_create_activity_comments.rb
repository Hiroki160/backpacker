class CreateActivityComments < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_comments do |t|
      t.integer :activity_review_id
      t.integer :customer_id
      t.string :content
      t.timestamps
    end
  end
end
