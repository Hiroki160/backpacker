class RemoveStatusFromGuesthouseApplies < ActiveRecord::Migration[6.1]
  def change
    remove_column :guesthouse_applies, :status, :integer
  end
end
