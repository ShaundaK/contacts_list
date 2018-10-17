# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


contact1 = Contact.new({first_name: "Sharon", last_name: "Lee", email:"slee@gmail.com", phone_number: 100})
contact1.save

contact2 = Contact.new({first_name: "Bill", last_name: "Stevens", email:"bstevens@gmail.com", phone_number: 200})
contact2.save

contact3 = Contact.new({first_name: "Lucy", last_name: "Brown", email:"lbrown@gmail.com", phone_number: 300})
contact3.save