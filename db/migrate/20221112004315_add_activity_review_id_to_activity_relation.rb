class AddActivityReviewIdToActivityRelation < ActiveRecord::Migration[6.1]
  def change
    add_column :activity_relations, :activity_review_id, :integer
  end
end
