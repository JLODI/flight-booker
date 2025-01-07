class Booking < ApplicationRecord
    has_many :passengers, dependent: :destroy
    has_many :flights

    accepts_nested_attributes_for :passengers
end
