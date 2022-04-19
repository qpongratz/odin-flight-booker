# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview

  def booking_confirmation
    passenger = Passenger.last
    PassengerMailer.with(passenger: passenger).booking_confirmation
  end
end
