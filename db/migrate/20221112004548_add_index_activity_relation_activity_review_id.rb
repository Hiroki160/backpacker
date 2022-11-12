class AddIndexActivityRelationActivityReviewId < ActiveRecord::Migration[6.1]
  def change
    add_index :activity_relations, :activity_review_id
  end
end
