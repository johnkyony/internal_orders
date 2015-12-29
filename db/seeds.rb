# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create([{name: 'admin'} , {role: 1} , {email: 'admin@admin.com'} , {encrypted_password: 'admin123'}])


network = Type.create({name:'network'})
internet_connection = Type.create({name: 'internet connection'})
phone = Type.create({name: 'Phone down'})

procurement = Department.create({name: 'Procurement'})
banking_solutions = Department.create({name: 'Banking solutions'})
finances = Department.create({name: 'Finances'})

