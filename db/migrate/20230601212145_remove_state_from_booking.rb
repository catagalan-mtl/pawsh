class RemoveStateFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :state, :integer
  end
end
