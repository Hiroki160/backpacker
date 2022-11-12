class AddIndexGuesthouseReleationGuesthouseReviewId < ActiveRecord::Migration[6.1]
  def change
    add_index :guesthouse_relations, :guesthouse_review_id
  end
end
