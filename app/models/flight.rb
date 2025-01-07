class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport", foreign_key: :departure_airport_id, inverse_of: :departing_flights
    belongs_to :arrival_airport, class_name: "Airport", foreign_key: :arrival_airport_id, inverse_of: :arriving_flights

    def flight_name
        departure_code = self.departure_airport.code
        arrival_code = self.arrival_airport.code
        "#{departure_code} -> #{arrival_code}"
    end
end
