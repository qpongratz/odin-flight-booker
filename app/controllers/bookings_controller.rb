class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @passengers = []
    params[:passenger_count].to_i.times do
      @passengers << Passenger.new
    end
  end
end
