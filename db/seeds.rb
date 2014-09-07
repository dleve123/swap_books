# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


seller_1 = User.create(email: 'seller1@jhu.edu', password: 'password', confirmed_at: Time.now)
seller_2 = User.create(email: 'seller2@jhu.edu', password: 'password', confirmed_at: Time.now)

Book.create!(name: 'Programming 101', isbn: ("1" * 10)).matches.create(seller: seller_1)
Book.create!(name: 'Arts and Crafts', isbn: ("3" * 10)).matches.create([{ seller: seller_2 }, { seller: seller_1 }])
Book.create!(name: 'Intro Biology (No Seller To Start)', isbn: ("2" * 10))
