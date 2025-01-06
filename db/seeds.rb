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

Airport.find_orcreate_by!([{
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
},
])

p "Created #{Airport.count} airports"