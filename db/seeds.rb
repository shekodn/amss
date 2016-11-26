# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Course.create!(name:  "Example Course",
             instructor: "Maestro",
             typeOfEvent:              "Seminar",
             price:              "700",
             premiumPrice:              "550",
             sizeLimit:              "25",
             description:              "Amazing course")


20.times do |n|
  name  = Faker::Name.name
  instructor = "Maestro-#{n+1}"
  Course.create!(name:  "Example Course",
               instructor: instructor,
               typeOfEvent: "Seminar",
               price: "700",
               premiumPrice: "550",
               sizeLimit: "25",
               description:"Amazing course")
end
