class RemoveGuesthouseIdFromGuesthouseRelation < ActiveRecord::Migration[6.1]
  def change
    remove_column :guesthouse_relations, :guesthouse_id, :integer
  end
end
