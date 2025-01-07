class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.datetime :departure_time
      t.datetime :arrival_time
      t.integer :duration

      t.timestamps
    end
  end
end
