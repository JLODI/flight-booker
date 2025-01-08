class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        num_tickets = params[:num_tickets].to_i
    end
    
    def create
        @booking = .Booking.new(passenger_params)
        if @booking.save
            flash[:notice] = "Your flight is confirmed!"
            render :new
        else
            flash.now[:error] = "Something went wrong, please try again."
        end
    end


    private
    def passenger_params
        params.expect(booking: [:name, :email])
    end
end
