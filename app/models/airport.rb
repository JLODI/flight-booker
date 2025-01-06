class Airport < ApplicationRecord
    has_many :arriving_flights, class_name: "Flight", foreign_key: "destination_id", inverse_of: :destination_airport, dependent: :destroy
    has_many :departing_flights, class_name: "Flight", foreign_key: "origin_id", inverse_of: :origin_airport, dependent: :destroy
end 
