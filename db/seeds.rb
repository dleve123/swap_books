# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create!(name: 'Programming 101', isbn: ("1" * 10), author: 'Thomas JakBitch', image_name: 'intropro.jpg')
Book.create!(name: 'Arts and Crafts', isbn: ("3" * 10), author: 'Krieger School of A/S', image_name:'arttextbook.jpg')
Book.create!(name: 'Intro Biology', isbn: ("2" * 10), author: 'John hopkin', image_name: 'bio.jpg')

User.create(email: 'dan@test.com')
