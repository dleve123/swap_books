tom = User.create(email: 'tjaklit1@jhu.edu', password: 'password',
                  confirmed_at: Time.now, picture: "http://graph.facebook.com/866729690005368/picture",
                  name: "Tom Jaklitsch")

eric = User.create(email: 'ehaydel1@jhu.edu', password: 'password',
                  confirmed_at: Time.now, picture: "http://graph.facebook.com/10202524784820153/picture",
                  name: "Eric Haydel")

dan = User.create(email: 'dlevens1@jhu.edu', password: 'password',
                  confirmed_at: Time.now, picture: "http://graph.facebook.com/10202713770869892/picture",
                  name: "Dan Levenson")

noah = User.create(email: 'npresle1@jhu.edu', password: 'password',
                  confirmed_at: Time.now, picture: "http://graph.facebook.com/10202628687219746/picture",
                  name: "Noah Presler")

prog_book = Book.create!(name: 'Practical Object-Oriented Design in Ruby: An Agile Primer ',
                         isbn: '0321721330').
  matches.create(seller: eric)

arts_book = Book.create!(name: '101 Textures in Oil & Acrylic', isbn: '1600582990').
  matches.create([{ seller: tom }, { seller: eric }])

Book.create!(name: 'A Game of Thrones (A Song of Ice and Fire, Book 1)', isbn: '0553593714').
  matches.create(seller: tom)

Book.create!(name: 'Intro Biology (No Seller To Start)', isbn: ("2" * 10))
