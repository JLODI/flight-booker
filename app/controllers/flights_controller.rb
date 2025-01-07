class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |air| air.code }.sort
  end
end
