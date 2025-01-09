class Passenger < ApplicationRecord
    belongs_to :booking
    has_one :flight, through: :booking
end