class CreateActivityRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_relations do |t|
      t.integer :activity_id
      t.integer :activity_tag_id
      t.timestamps
    end
    
      add_index :activity_relations, :activity_id
      add_index :activity_relations, :activity_tag_id
  end
end
