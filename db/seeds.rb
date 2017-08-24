# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Peter", email: "peter@email.com", password: "password")
User.create(name: "Eric", email: "eric@email.com", password: "password")
User.create(name: "Derek", email: "derek@email.com", password: "password")
User.create(name: "John", email: "john@email.com", password: "password")


Haircut.create(name: "fade", price: 25)
Haircut.create(name: "bald", price: 5)
Haircut.create(name: "bald fade", price: 20)

Appointment.create(time: Time.zone.local(2017, 8, 27, 16), haircut_id: 1, user_id: 1, barber_id: 1)
Appointment.create(time: Time.zone.local(2017, 8, 28, 15), haircut_id: 2, user_id: 2, barber_id: 2)
Appointment.create(time: Time.zone.local(2017, 8, 29, 21), haircut_id: 3, user_id: 1, barber_id: 1)
Appointment.create(time: Time.zone.local(2017, 8, 29, 21), haircut_id: 3, user_id: 3, barber_id: 3)
Appointment.create(time: Time.zone.local(2017, 8, 29, 21), haircut_id: 3, user_id: 2, barber_id: 1)

