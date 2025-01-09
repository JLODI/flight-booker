class Passenger < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :flights, through: :bookings
end