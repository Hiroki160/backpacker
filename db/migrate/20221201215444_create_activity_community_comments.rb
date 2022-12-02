class CreateActivityCommunityComments < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_community_comments do |t|
      t.integer :customer_id
      t.integer :activity_community_id
      t.text :body
      t.timestamps
    end
  end
end
