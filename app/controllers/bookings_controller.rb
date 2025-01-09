class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        params[:num_tickets].to_i.times { @booking.passengers.new }
        @num_tickets = params[:num_tickets].to_i
        @flight_option = search_flight_option
    end
    
    def create
        @booking = Booking.new(passenger_params)
        if @booking.save
            flash[:notice] = "Your flight is confirmed!"
            redirect_to booking_path(@booking)
        else
            redirect_to new_booking_path(@flight_option)
            flash.now[:error] = "Something went wrong, please try again."
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private
    def search_flight_option
        Flight.find_by(id: params[:flight_id])
    end
    def passenger_params
        params.require(:booking).permit(:flight_id, :num_tickets, passengers_attributes: [:name, :email])
    end
end
