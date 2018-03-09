# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Account.create!(
  email: "trentonbrew@gmail.com",
  password: "mypassword123",
  lastName: "Brew",
  firstName: "Trenton",
  phoneNumber: "6361231234",
  isBarber: false,
  city: "Chicago",
  username: "tbrew1023"
)
