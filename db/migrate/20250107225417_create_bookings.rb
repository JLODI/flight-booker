class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|

      t.timestamps
    end
  end
end
