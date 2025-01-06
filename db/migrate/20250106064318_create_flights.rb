class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.date :departure_date
      t.time :departure_time
      t.date :arrival_date
      t.time :arrival_time
      t.integer :duration

      t.timestamps
    end
  end
end
