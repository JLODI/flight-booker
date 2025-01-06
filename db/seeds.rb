# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.destroy_all

Airport.find_or_create_by!([{
    code: "SAN",
    city: "San Diego, CA"
},
{
    code: "LAX",
    city: "Los Angeles"
},
{
    code: "SFO",
    city: "San Francisco, CA"
},
{
    code: "PHX",
    city: "Phoenix, AZ"
},
{
    code: "LAS",
    city: "Las Vegas, NV"
},
{
    code:, "NYC",
    city: "New York City, NY"
},
{
    code: "DFW",
    city: "Dallas, TX"
}
])

p "Created #{Airport.count} airports"

Flight.destroy_all

Flight.find_or_create_by!([{
    departure_airport_id: 1,
    arrival_airport_id: 6, 
    departure_time: Time.new(2025, 1, 21, 13, 46),
    arrival_time: Time.new(2025, 1, 21, 23, 44),
    duration: 7, 
},
{
    departure_airport_id:1,
    arrival_airport_id:6, 
    departure_time: Time.new(2025, 1, 21, 21, 55),
    arrival_time: Time.new( 2025, 1, 22, 9, 21),
    duration: 8, 
},
{
    departure_airport_id:1,
    arrival_airport_id:3, 
    departure_time: Time.new(2025,1,19, 10, 55),
    arrival_time: Time.new(2025,1,19, 12, 37),
    duration:2, 
},
{
    departure_airport_id:1,
    arrival_airport_id:3, 
    departure_time: Time.new(2025, 1, 19, 21, 55),
    arrival_time: Time.new(2025, 1, 19, 23, 38),
    duration:2, 
},
{
    departure_airport_id:3,
    arrival_airport_id:1, 
    departure_time: Time.new(2025, 1, 22, 11, 00),
    arrival_time: Time.new(2025, 1, 22, 12, 39),
    duration:2, 
}
])

p "Created #{Airport.count} airports"