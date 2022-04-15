class FlightsController < ApplicationController
  def index
    @flights = Flight.arrival(params[:arrival])
                     .departure(params[:departure])
                     .on_date(params[:date])
                     .includes(:arrival_airport)
                     .includes(:departure_airport)
  end

  def show
  end
end
