# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create!(name: 'Programming 101', isbn: ("1" * 10))
Book.create!(name: 'Arts and Crafts', isbn: ("3" * 10))
Book.create!(name: 'Intro Biology', isbn: ("2" * 10))

test = User.create(email: 'foo@jhu.edu', password: 'password')
test.confirm!

alice = User.create(email: 'alice@jhu.edu', password: 'password' )
alice.confirm!
bob = User.create(email: 'bob@jhu.edu', password: 'password' )
bob.confirm!

@message = alice.send_message(bob, "Hello bob!", "How are you?")
@reply_message = bob.reply_to(@message, "Re: Hello bob!", "I'm fine!")