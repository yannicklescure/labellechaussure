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

puts 'Creating products...'
products_attributes = [
  {
    title: 'shoes 1',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 1,
    user_id: 1,
    fake_photo: 'http://www.sneakereliteclub.com/Himages/chaussure-basketball-homme-nike-kobe-10-elite-low-mambacurial-black-black-wolf-grey-pink-flash-1788-2.jpg'
  },
  {
    title: 'shoes 2',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 2,
    user_id: 2,
    fake_photo: ''
  },
  {
    title: 'shoes 3',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 3,
    user_id: 2,
    fake_photo: ''
  },
  {
    title: 'shoes 4',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 4,
    user_id: 3,
    fake_photo: ''
  },
  {
    title: 'shoes 5',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 5,
    user_id: 4,
    fake_photo: ''
  },
  {
    title: 'shoes 6',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 2,
    user_id: 2,
    fake_photo: ''
  },
  {
    title: 'shoes 7',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 4,
    user_id: 3,
    fake_photo: ''
  },
  {
    title: 'shoes 8',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 1,
    user_id: 3,
    fake_photo: ''
  },
  {
    title: 'shoes 9',
    brand: '',
    model: '',
    year: '',
    size: '',
    description: '',
    price: '',
    color_id: 6,
    user_id: 1,
    fake_photo: ''
  }

]
Product.create!(products_attributes)

# <img src"<%= product.fake_photo %>" alt="<%= product.title %>" />

# url = 'http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png'
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save
puts 'Finished!'
