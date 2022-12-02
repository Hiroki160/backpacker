class CreateActivityApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_applies do |t|

      t.integer :customer_id
      t.integer :activity_community_id
      t.integer :status, default: 2

      t.timestamps
    end
  end
end
