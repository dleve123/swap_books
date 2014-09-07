tom = User.create(email: 'tom@jhu.edu', password: 'password', confirmed_at: Time.now)
eric = User.create(email: 'eric@jhu.edu', password: 'password', confirmed_at: Time.now)

dan = User.create(email: 'dan@jhu.edu', password: 'password', confirmed_at: Time.now)
noah = User.create(email: 'noah@jhu.edu', password: 'password', confirmed_at: Time.now)

prog_book = Book.create!(name: 'Practical Object-Oriented Design in Ruby: An Agile Primer ',
                         isbn: '0321721330').
  matches.create(seller: eric)

arts_book = Book.create!(name: '101 Textures in Oil & Acrylic', isbn: '1600582990').
  matches.create([{ seller: tom }, { seller: eric }])

Book.create!(name: 'A Game of Thrones (A Song of Ice and Fire, Book 1)', isbn: '0553593714').
  matches.create(seller: tom)

Book.create!(name: 'Intro Biology (No Seller To Start)', isbn: ("2" * 10))
