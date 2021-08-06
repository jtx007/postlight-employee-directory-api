# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'




10.times {
    Location.create(state: Faker::Address.state)
}

20.times {
    Title.create(jobtitle: Faker::Job.title)
}

10.times {
    Department.create(name: Faker::Company.industry)
}


50.times {
    Employee.create(name: Faker::Name.unique.name, avatar: Faker::Avatar.unique.image, email: Faker::Internet.unique.email, location_id: rand(1..10), title_id: rand(1..20), department_id: rand(1..10) )
}