# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(id:1, name:'Cleber Antonio', email:'teste@email.com', password:'password', user_type: 0)
User.create(id:2, name:'João Carlos',    email:'testa@email.com', password:'password', user_type: 1 )
