# db/seeds.rb

puts 'Cleaning database...'
Color.destroy_all
User.destroy_all
Product.destroy_all
Purchase.destroy_all

puts 'Creating colors...'
colors_attributes = [
  {
    name: "black"
  },
  {
    name: "white"
  },
  {
    name: "red"
  },
  {
    name: "blue"
  },
  {
    name: "green"
  },
  {
    name: "yellow"
  },
  {
    name: "pink"
  }
]
Color.create!(colors_attributes)

puts 'Creating users...'
users_attributes = [
  {
    email: "ferdinand@email.com",
    password: "123456"
  },
  {
    email: "pierre@email.com",
    password: "123456"
  },
  {
    email: "sophie@email.com",
    password: "123456"
  },
  {
    email: "yannick@email.com",
    password: "123456"
  },
]

User.create!(users_attributes)

# url = 'http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png'
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save
puts 'Finished!'
