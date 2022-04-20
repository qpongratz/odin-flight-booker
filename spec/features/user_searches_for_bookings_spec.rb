require 'rails_helper'

RSpec.feature 'User searches for bookings' do
  context 'they see the booking results' do
    # arrival_airport = Airport.create(name: "Arrival")
    # departure_airport = Airport.create(name:"Departure")
    # date = Date.today
    # flight = Flight.create(arrival_airport_id: arrival_airport.id,
    #                        departure_airport_id: departure_airport.id,
    #                        date: date)
    flight = create(:flight)

    visit root_path

    click_on 'Search'
    expect(page).to have_content 'Results'
  end
end
