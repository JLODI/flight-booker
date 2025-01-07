class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |air| air.code }.sort
    if params[:departure_airport_code].present?
      @flight_result = search_flights
    end
  end

  private

  def search_flights
    departure_airport_id = Airport.find_by(code: params[:departure_airport_code]).id
    arrival_airport_id = Airport.find_by(code: params[:arrival_airport_code]).id

    departure_time = Time.parse(params[:departure_time])

    flight_query = Flight
      .where(departure_airport_id: departure_airport_id)
      .where(arrival_airport_id: arrival_airport_id)
      .where("departure_time <= ? AND departure_time >= ?", (departure_time + 5.days), (departure_time - 5.days))
    if flight_query.empty?
      "Sorry there are no flights for your query."
    else
    flight_query
    end
  end
end