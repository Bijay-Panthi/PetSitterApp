# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# t.string :name
# t.integer :age
# t.string :type
# t.string :gender
# t.text :description
# t.text :image
# t.integer :user_id



User.destroy_all

user1 = User.create(name: "Bill", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "imageOfBill")
user2 = User.create(name: "Hash", email: "hash@hash.com", password: "hash", password_confirmation: "hash", location: "Melbourne", image: "imageOfHash")
user3 = User.create(name: "Rocket", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")


Pet.destroy_all

pet1 = Pet.create(name: "Bin", date_of_birth: 5, type_of_pet: "Dog", gender: "Male", description: "Brown in colour", image: "imageOfDog", user_id: user1.id )
pet2 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "White in colour", image: "imageOfCat", user_id: user2.id )
pet3 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user3.id )

Service.destroy_all

service1 = Service.create(name: "Home Care", description: "All care done at home", price: 24)
service2 = Service.create(name: "Pet sitter", description: "Taking care at owns house", price: 57)
service3 = Service.create(name: "Walk", description: "Park walk", price: 42)

#Bookings.destroy_all

#booking1 = Booking.create(start_time: "4", end_time: "7", service_id: service1.id,)


# t.datetime :start_time
# t.datetime :end_time
# t.integer :service_id
# t.integer :owner_id
# t.integer :sitter_id
