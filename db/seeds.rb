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
    password: "123456",
    first_name: "ferdinand"
  },
  {
    email: "pierre@email.com",
    password: "123456",
    first_name: "pierre"
  },
  {
    email: "sophie@email.com",
    password: "123456",
    first_name: "sophie"
  },
  {
    email: "yannick@email.com",
    password: "123456",
    first_name: "yannick"
  },
]

User.create!(users_attributes)

puts 'Creating products...'
products_attributes = [
  {
    title: 'Brand new NIKE LEBRON 17',
    brand: 'Nike',
    model: 'NIKE LEBRON 17',
    year: '2019',
    size: '10',
    description: 'Overpriced shoes',
    price: '200',
    color_id: 1,
    user_id: 1,
    fake_photo: 'https://www.kicksonfire.com/wp-content/uploads/2019/11/harlem-fashion-row-nike-lebron-17-hfr-6-681x463.jpg?x98166'
  },
  {
    title: 'Brand New Cortez',
    brand: 'Nike',
    model: 'Cortez',
    year: '2005',
    size: '11',
    description: 'A classic, in great condition',
    price: '150',
    color_id: 2,
    user_id: 2,
    fake_photo: 'data:image/jpeg;base64,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'
  },
  {
    title: 'Kobe shoes',
    brand: 'Nick',
    model: 'Kobe',
    year: '2017',
    size: '12',
    description: 'Those shoes were sold in 30 sc',
    price: '3000',
    color_id: 3,
    user_id: 2,
    fake_photo: 'http://www.sneakereliteclub.com/Himages/chaussure-basketball-homme-nike-kobe-10-elite-low-mambacurial-black-black-wolf-grey-pink-flash-1788-2.jpg'
  },
  {
    title: 'Brand New Cortez',
    brand: 'Nike',
    model: 'Cortez',
    year: '2012',
    size: '10',
    description: 'A classic, in great condition',
    price: '110',
    color_id: 4,
    user_id: 3,
    fake_photo: 'data:image/jpeg;base64,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'
  },
  {
    title: 'Adidas Spezial And Liam Gallagher Create A New LG SPZL',
    brand: 'Adidas',
    model: 'Spezial Liam Gallagher',
    year: '2019',
    size: '11',
    description: "You wanted to have Liam Gallagher's unique style? These shoes are finally is your chance to do so!",
    price: '125',
    color_id: 5,
    user_id: 4,
    fake_photo: 'https://sneakernews.com/wp-content/uploads/2019/08/adidas-spezial-liam-gallagher-lg-spzl-5.jpg'
  },
  {
    title: 'Adidas Superstar in great condition',
    brand: 'Adidas',
    model: 'Superstar',
    year: '2017',
    size: '10',
    description: 'A classic',
    price: '100',
    color_id: 2,
    user_id: 2,
    fake_photo: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwip1tCvqPnlAhXB1FkKHWQkBWMQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.adidas.ca%2Fen%2Fsuperstar-shoes%2FC77153.html&psig=AOvVaw3Ob9U_Ln_1PsuG30pLq_Ys&ust=1574357369454094'
  },
  {
    title: 'Adidas Superstar in great condition',
    brand: 'Adidas',
    model: 'Superstar',
    year: '2017',
    size: '10',
    description: 'A classic',
    price: '100',
    color_id: 4,
    user_id: 3,
    fake_photo: 'https://assets.adidas.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/ab12ced1d0a14151b88ea7fa00ee94a1_9366/Superstar_Foundation_Shoes_Black_B27140_01_standard.jpg'
  },
  {
    title: 'Adidas Spezial And Liam Gallagher Create A New LG SPZL',
    brand: 'Adidas',
    model: 'Spezial Liam Gallagher',
    year: '2019',
    size: '11',
    description: "You wanted to have Liam Gallagher's unique style? These shoes are finally is your chance to do so!",
    price: '125',
    color_id: 1,
    user_id: 3,
    fake_photo: ''
  },
  {
    title: 'Kobe shoes',
    brand: 'Nick',
    model: 'Kobe',
    year: '2017',
    size: '12',
    description: 'Those shoes were sold in 30 sc',
    price: '3000',
    color_id: 6,
    user_id: 1,
    fake_photo: 'https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/qxrb9vyz3zfrojal8enj/chaussure-de-basketball-kobe-iv-protro-801pHj.jpg'
  }

]
Product.create!(products_attributes)

# <img src"<%= product.fake_photo %>" alt="<%= product.title %>" />

# url = 'http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png'
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save
puts 'Finished!'
