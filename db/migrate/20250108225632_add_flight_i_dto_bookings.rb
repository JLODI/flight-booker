class AddFlightIDtoBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :flight_id, :integer
  end
end
