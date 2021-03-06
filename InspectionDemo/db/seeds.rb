# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
    Student.create!(
        buckid: Faker::Number.unique.number(digits: 9),
        fname: Faker::Name.first_name,
        lname: Faker::Name.last_name)
end
