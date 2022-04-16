class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passenger_count].to_i.times{ @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:notice] = 'Flight booked'
      redirect_to @booking
    else
      flash[:alert] = 'Oh no!'
      render new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passengers = @booking.passengers
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
  end
end
