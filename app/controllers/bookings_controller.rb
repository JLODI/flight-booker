class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        params[:num_tickets].to_i.times { @booking.build_passenger }
        @num_tickets = params[:num_tickets].to_i
        @flight_option = search_flight_option
    end
    
    def create
        @booking = Booking.new(passenger_params)
        if @booking.save
            flash[:notice] = "Your flight is confirmed!"
            render index
        else
            flash.now[:error] = "Something went wrong, please try again."
        end
    end

    private
    def search_flight_option
        Flight.find_by(id: params[:flight_id])
    end
    def passenger_params
        params.expect(booking: [:flight_id, passenger_attributes: [ :name, :email ] ])
    end
end
