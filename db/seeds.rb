client1 = User.create!(email: 'client1@mail.com', password: '123456')
client2 = User.create!(email: 'client2@mail.com', password: '123456')
washer1 = User.create!(email: 'washer1@mail.com', password: '123456', washer: 2)
washer2 = User.create!(email: 'washer2@mail.com', password: '123456', washer: 1)

car1 = Car.create!(
  user: client1,
  name: 'fit',
  license_plate: 'HVB2345',
  brand: 'Fiat',
  color: 'Silver',
  # photo: 'teste'
)

car2 = Car.create!(
  user: client2,
  name: 'fiesta',
  license_plate: 'CPB2047',
  brand: 'Ford',
  color: 'red',
  # photo: 'teste'
)

booking = Booking.create!(car: car1)