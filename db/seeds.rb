require 'faker'

puts "### Creating Users Candidates and Washers ###"

20.times do |i|
  puts "## User #{i} ##"
  User.create!(email: Faker::Internet.free_email, password: '123456')
end

5.times do |i|
  puts "## Candidate #{i} ##"
  User.create!(email: Faker::Internet.free_email, password: '123456', washer: 1)
end

10.times do |i|
  puts "## Washer #{i} ##"
  User.create!(email: Faker::Internet.free_email, password: '123456', washer: 2)
end

clients = User.where(washer: 0)
pendig  = User.where(washer: 1)
washers = User.where(washer: 2)

puts "### Creating Cars ###"

clients.each_with_index do |client, index|
  puts "## Client #{index} ##"

  rand(1..4).times do |i|
    puts "## Car #{i} ##"

    vin = Faker::Vehicle.vin
    plate = "#{vin.first(3)}#{rand(0..9)}#{rand(0..9)}#{index}"

    Car.create!(
      user: client,
      brand: Faker::Vehicle.manufacture,
      model: Faker::Pokemon.name,
      name: Faker::Artist.name,
      license_plate: plate,
      color: Faker::Color.color_name,
      # photo: 'teste'
    )
  end
end

cars = Car.all

puts "### Creating Bookings ###"

cars.each_with_index do |car, i|
  puts "## Booking #{i} ##"

  Booking.create!(car: car)
end
