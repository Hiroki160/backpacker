class ChangeColummDefaultToGuesthouseApplies < ActiveRecord::Migration[6.1]
  def change
    change_column_default :guesthouse_applies, :status, from: nil, to: "2"
  end
end
