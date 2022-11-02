class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :customer_id
      t.integer :comment_id
      t.string :content
      t.timestamps
    end
  end
end
