# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

programming = Book.create!(name: 'Programming 101', isbn: ("1" * 10))
arts_and_crafts = Book.create!(name: 'Arts and Crafts', isbn: ("3" * 10))
bio = Book.create!(name: 'Intro Biology', isbn: ("2" * 10))
