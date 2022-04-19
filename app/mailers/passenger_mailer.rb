class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booking_confirmation
    @passenger = params[:passenger]
    @flight = @passenger.flight
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
