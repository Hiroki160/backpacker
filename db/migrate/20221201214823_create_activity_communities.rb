class CreateActivityCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_communities do |t|
      
      t.integer :customer_id
      t.integer :activity_id
      t.text :body
      t.string :title
      t.date :start_date
      t.date :end_date
      
      t.timestamps
    end
  end
end
