class CreateGuesthouseRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_relations do |t|
      t.integer :guesthouse_id
      t.integer :guesthouse_tag_id
      t.timestamps
    end

      add_index :guesthouse_relations, :guesthouse_id
      add_index :guesthouse_relations, :guesthouse_tag_id
  end
end
