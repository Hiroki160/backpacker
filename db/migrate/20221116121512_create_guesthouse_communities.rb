class CreateGuesthouseCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_communities do |t|
      
      t.integer :customer_id
      t.integer :guesthouse_id
      t.text :body
      t.string :title
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
