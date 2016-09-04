# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p1 = Place.create(name: 'Maadi', longitude: 123.23, latitude: 345.345)
p2 = Place.create(name: 'Zamalek', longitude: 123.23413, latitude: 345.345)
p3 = Place.create(name: 'Smart Village', longitude: 1123.23, latitude: 34235.345)
p4 = Place.create(name: 'New Cairo', longitude: 1123.223, latitude: 34235.3454)

g1 = Group.create(name: 'Axis')
g2 = Group.create(name: 'Allies')

u1 = User.create(fname: 'fname_u1', lname: 'lname_u1', phone_number: '01012345678', home_place: p1, work_place: p2, group: g1)
u2 = User.create(fname: 'fname_u2', lname: 'lname_u2', phone_number: '01112345678', home_place: p1, work_place: p2, group: g1)
u3 = User.create(fname: 'fname_u3', lname: 'lname_u3', phone_number: '011123445678', home_place: p1, work_place: p2, group: g2)

t1 = Trip.create(driver: u1, source: p1, destination: p2, time: Time.now, seats: 3)