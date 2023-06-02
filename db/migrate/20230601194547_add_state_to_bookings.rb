class AddStateToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :state, :integer, default: 0
  end
end
