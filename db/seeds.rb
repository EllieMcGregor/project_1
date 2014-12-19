# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create!(first_name:"Ellie", email:"ellie@ga.com", password:"password", role:"admin")

User.create!(first_name:"Sebastian", email:"sebastian@ga.com", password:"password", role:"student")

User.create!(first_name:"Sadiq", email:"sadiq@ga.com", password:"password", role:"student")
User.create!(first_name:"Joel", email:"joel@ga.com", password:"password", role:"student")
User.create!(first_name:"Nina", email:"nina@ga.com", password:"password", role:"student")
User.create!(first_name:"Sophie", email:"sophie@ga.com", password:"password", role:"student")
User.create!(first_name:"Tony", email:"tony@ga.com", password:"password", role:"student")
User.create!(first_name:"Luke", email:"luke@ga.com", password:"password", role:"student")
User.create!(first_name:"Bruno", email:"bruno@ga.com", password:"password", role:"student")
User.create!(first_name:"Hannah", email:"hannah@ga.com", password:"password", role:"student")
User.create!(first_name:"Lisa", email:"lisa@ga.com", password:"password", role:"student")
User.create!(first_name:"Neil", email:"neil@ga.com", password:"password", role:"student")
User.create!(first_name:"Rabea", email:"rabea@ga.com", password:"password", role:"student")
User.create!(first_name:"Andres", email:"andres@ga.com", password:"password", role:"student")
User.create!(first_name:"Daniel", email:"daniel@ga.com", password:"password", role:"student")
User.create!(first_name:"Julia", email:"julia@ga.com", password:"password", role:"student")

User.create!(first_name:"Michael", email:"michael@ga.com", password:"password", role:"instructor")
User.create!(first_name:"Jarkyn", email:"jarkyn@ga.com", password:"password", role:"instructor")
User.create!(first_name:"Alex", email:"alex@ga.com", password:"password", role:"instructor")
User.create!(first_name:"Johanna", email:"johanna@ga.com", password:"password", role:"instructor")
User.create!(first_name:"Guy", email:"guy@ga.com", password:"password", role:"instructor")



Campus.create!(name:"Second Home", description:"A lovely place filled with grumpy people", location:"Hanbury st", image:"")
Campus.create!(name:"Back Hill", description:"The old place", location:"Back hill", image:"")

Course.create!(name:"WDI", description:"A hard course")
Course.create!(name:"UXDI", description:"An easy course")


Classroom.create!(room_name:'classroom 1', capacity: 21, campus_id: 1)


