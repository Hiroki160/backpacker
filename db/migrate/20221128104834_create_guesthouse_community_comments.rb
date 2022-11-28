class CreateGuesthouseCommunityComments < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_community_comments do |t|
      t.integer :customer_id
      t.integer :guesthouse_community_id
      t.text :body
      t.timestamps
    end
  end
end
