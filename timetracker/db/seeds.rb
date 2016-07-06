# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating three projects"
projectA = Project.create(name: "Ironhack", description: "Coding bootcamp")
projectB = Project.create(name: "Papa Johns", description: "Decent chain for pizza")
projectC = Project.create(name: "Taco Bell")

puts "Creating 4 time entries"
TimeEntry.create(project_id: projectA.id, hours: 2, minutes: 15, comment: "Curriculum development", date: Time.now)
TimeEntry.create(project_id: projectB.id, hours: 1, minutes: 45, comment: "Did some client research", date: Time.now)
TimeEntry.create(project_id: projectB.id, hours: 0, minutes: 33, comment: "Tested the ordering", date: Time.now)
TimeEntry.create(project_id: projectC.id, hours: 3, minutes: 05, comment: "Make new taco", date: Time.now)

puts "done"


# rails db:seed
