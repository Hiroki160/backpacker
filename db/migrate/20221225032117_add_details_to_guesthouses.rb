class AddDetailsToGuesthouses < ActiveRecord::Migration[6.1]
  def change
    add_column :guesthouses, :latitude, :float
    add_column :guesthouses, :longitude, :float
  end
end
