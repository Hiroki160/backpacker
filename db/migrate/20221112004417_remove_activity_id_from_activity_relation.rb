class RemoveActivityIdFromActivityRelation < ActiveRecord::Migration[6.1]
  def change
    remove_column :activity_relations, :activity_id, :integer
  end
end
