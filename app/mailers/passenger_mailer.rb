class PassengerMailer < ApplicationMailer
    default from: "booking@odinflightbooker.com"

    def booking_confirmation(passenger)
        # @passenger = params.nil? ? passenger : params[:passenger]
        @passenger = passenger
        @booking = passenger.booking
        @flight = @booking.flight
        mail(to: @passenger.email, subject: "Your Flight has been confirmed")
    end
    
end
