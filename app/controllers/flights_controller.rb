class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |air| [air.city, air.id] }.sort
  end
end
