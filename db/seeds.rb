# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seeding airports...'

Airport.create(name: 'San Francisco International Airport', code: 'SFO')
Airport.create(name: 'John F. Kennedy International Airport', code: 'JFK')
Airport.create(name: 'Will Rogers International Airport', code: 'OKC')
Airport.create(name: 'Dallas/Fort Worth International Airport', code: 'DFW')
Airport.create(name: 'Albuquerque "International Sunport', code: 'ABQ')

puts 'Seeding flights...'

200.times do
  airports = (1..5).to_a.shuffle
  date = [Date.yesterday, Date.today, Date.tomorrow]
  Flight.create(arrival_airport_id: airports[0],
                departure_airport_id: airports[1],
                date: date.sample,
                duration: rand(100..500))
end

puts 'Seeding complete.'
