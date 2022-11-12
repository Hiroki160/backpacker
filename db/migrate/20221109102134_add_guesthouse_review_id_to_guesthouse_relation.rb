class AddGuesthouseReviewIdToGuesthouseRelation < ActiveRecord::Migration[6.1]
  def change
    add_column :guesthouse_relations, :guesthouse_review_id, :integer
  end
end
