# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:'Cleber Antonio', cpf: '12345678911', email:'prop@email.com', password:'password', user_type: 1)
User.create(name:'João Carlos',    cpf: '12345678942', email:'inq@email.com', password:'password', user_type: 0)
