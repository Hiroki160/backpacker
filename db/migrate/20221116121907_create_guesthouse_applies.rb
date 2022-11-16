class CreateGuesthouseApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_applies do |t|
      
      t.integer :customer_id
      t.integer :guesthouse_community_id

      t.timestamps
    end
  end
end
