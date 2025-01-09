class AddBookingIdColumntoPassengers < ActiveRecord::Migration[8.0]
  def change
    add_column :passengers, :booking_id, :integer
  end
end
