class DropPassengerIdOnBookings < ActiveRecord::Migration[8.0]
  def change
    remove_column :bookings, :passenger_id, :integer
  end
end
