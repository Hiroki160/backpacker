class AddStatusToGuesthouseApplies < ActiveRecord::Migration[6.1]
  def change
    add_column :guesthouse_applies, :status, :integer
  end
end
