# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create({ name: 'Chicago' , { name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
  email: 'jholzer@gmail.com',
   password: 'password',
   id: 1,
   name: 'Jessica'
  )
Puppy.create(
   name: 'Roman',
   age: 3,
   breed: 'unknown',
   price: 50 ,
   user_id: 1,
   url: 'http://media.kayfabenews.com/wp-content/uploads/2015/02/puppy7.jpg'
  )

Puppy.create(
   name: 'Chris',
   age: 1,
   breed: 'Corgy',
   price: 80 ,
   user_id: 1,
   url: 'http://www.healthforthewholeself.com/wp-content/uploads/2011/04/puppies-rock-10.jpg'
  )

Puppy.create(
   name: 'Bella',
   age: 3,
   breed: 'unknown',
   price: 50 ,
   user_id: 1,
   url: 'http://images4.fanpop.com/image/photos/22200000/Adorable-Puppies-puppies-22289919-1280-800.jpg'
  )

Puppy.create(
   name: 'Pikachu',
   age: 1,
   breed: 'alien',
   price: 60 ,
   user_id: 1,
   url: 'http://i.ytimg.com/vi/Vi8VKaOi2nc/hqdefault.jpg')
