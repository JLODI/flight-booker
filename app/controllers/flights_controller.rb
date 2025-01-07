class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |air| [air.code, air.id] }.sort
  end
end
