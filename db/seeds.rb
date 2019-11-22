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
    title: 'Nike ISPA Joyride Envelope',
    brand: 'Nike',
    model: 'Nike Joyride',
    year: '2019',
    size: '12',
    description: 'Nike ISPA continues to cut against the grain with its latest releases and the Joyride Envelope is the purest testament to that',
    price: '300',
    color_id: 1,
    user_id: 1,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574442334/BV4584-PREM_400_A_hd_1600_nt6jtf.png'
  },
  {
    title: 'Stars Wars Edition Adidas',
    brand: 'Adidas',
    model: 'Adidas x Star_wars',
    year: '2016',
    size: '16',
    description: 'The force is strong with the new Stars Wars!The Lightsaber-themed pack is designed for the players who wear them. Inspired by the unbreakable bond between a Jedi and their lightsaber, the design is highlighted by kyber crystal-themed elements that are featured on each silhouette’s UV midsole. ',
    price: '200',
    color_id: 1,
    user_id: 1,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574446455/STARS_WARS_x_Adidas_te2ycg.jpg'
  },
  {
    title: 'Nike Air Max 720 ISPA',
    brand: 'Nike',
    model: 'Air Max 720 ISPA',
    year: '2017',
    size: '8',
    description: 'retro-futuristic look, features one of the most tactical redesigns in the ISPA line to date, wear 3 times',
    price: '400',
    color_id: 1,
    user_id: 1,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574445988/CD2182100_8_yz8z3i.jpg'
  },
  {
    title: 'Kobe shoes',
    brand: 'Nike',
    model: 'Kobe',
    year: '2017',
    size: '12',
    description: 'Those shoes were sold in 30 sc, now is your one an only occasion to buy them! The better a shoe fits, the more you can focus on your speed. The Kobe AD NXT embodies this idea in a basketball shoe, utilising Nike s innovative lacing technology to lock you in with one pull.',
    price: '300',
    color_id: 1,
    user_id: 1,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574445628/kobe_shoes_jklw55.jpg'
  },
  {
    title: 'Brand New Cortez',
    brand: 'Nike',
    model: 'Cortez',
    year: '2012',
    size: '10',
    description: 'A classic, in great condition The Nike Cortez is the first track shoe created by Nike, in 1968.',
    price: '110',
    color_id: 1,
    user_id: 1,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574445628/cortez2_x5fhd0.jpg'
  },
  {
    title: 'Adidas Superstar in great condition',
    brand: 'Adidas',
    model: 'Superstar',
    year: '2017',
    size: '10',
    description: 'A classic. The Superstar is a low-top shoe manufactured by athletic goods company Adidas since 1969. The shoe was originally released as a low-top version of the Pro Model basketball shoe.',
    price: '100',
    color_id: 1,
    user_id: 2,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574445629/superstar_xpd1qo.jpg'
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
    user_id: 1,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574442333/Nike_Air_Max_720_ISPA_White_Black_jfslkj.jpg'
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
    user_id: 2,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574445629/liamgallagher_ilvrug.jpg'
  },
  {
    title: "Yecheil Yeezy Boost 350 V2",
    brand: "Adidas",
    model: "Yeezy Boost 350 V2",
    year: "2019",
    size: "9",
    description: "This is the Yeezy 350 V2 Yecheil, which is a bit more ‘lively’ than some of its predecessors. The shoe features red, white and black accents mixed across its Primeknit upper. A black sole finishes the bottom off the look.",
    price: "200",
    color_id: 1,
    user_id: 2,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445628/adidas-yeezy-350-v2-yecheil-fw5190-heel_w2wl5a.jpg"
  },
  {
    title: "Fantastic ASICS Running Shoes",
    brand: "ASICS",
    model: "ASICS GEL-1090",
    year: "2019",
    size: "11",
    description: "I bought those last month, but unfortunately, they are too big for me. The Gel-1090 made its first release back in 2004, posing itself as a more accessible alternative to the premium-priced Kayano running series. Boasting a sleek design with oodles of comfort, the model was an instant hit, now reimagined for 2019, the model adapts its bold and technical edge for the modern-day runner (or lifestyle wearer) with an aesthetic typical of that from the early ’00s, including plenty of mesh and eye catching silver overlays",
    price: "75",
    color_id: 2,
    user_id: 2,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445628/https___hypebeast.com_image_2019_11_asics-gel-1090-silver-steel-grey-1021A285-100-release-date-1_urtehv.jpg"
  },
  {
    title: "ASICS Onitsuka Tiger Ultimate 81 Baskets",
    brand: "ASICS",
    model: "Onitsuka Tiger",
    year: "2017",
    size: "11",
    description: "Remember Kill Bill? This is the classy version of the Tiger Onitsuka. The classic look combined with comfort make it an ultimate casual shoe. The Ultimate 81 from Onitsuka Tiger will be the perfect addition to your wardrobe.",
    price: "120",
    color_id: 3,
    user_id: 3,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445628/81BTtY6OzvL._AC_UX695__xbo7qc.jpg"
  },
  {
    title: "Fantastic PUMA Suede Classic",
    brand: "Puma",
    model: "Suede Classic",
    year: "1999",
    size: "11",
    description: "Puma sponsored African-American athletes Tommie Smith and John Carlos, after having won gold and bronze in the 200 meters respectively.",
    price: "90",
    color_id: 4,
    user_id: 3,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445628/352634_03_sv01_rlba6f.jpg"
  },
  {
    title: "Good condition Puma Tazon 6 FM ",
    brand: "Puma",
    model: "Tazon",
    year: "2015",
    size: "9",
    description: "A sleek, streamlined silhouette sets the PUMA tazon 6 shoe apart from the rest. This stylish sneaker sports a synthetic leather upper with midfoot saddle for maximum fit and comfort while eva in the heel absorbs impact.",
    price: "80",
    color_id: 2,
    user_id: 3,
    remote_photo_url: "https://res.cloudinary.com/sophiealexandre/image/upload/v1574443559/sneakers/60076-63_jglexr.png"
  },
  {
    title: "Fila Disruptor II platform wedge sneakers for men",
    brand: "Fila",
    model: "Fila Disruptor",
    year: "2019",
    size: "11",
    description: "Limited edition of the Fila Disruptor for men! Chunky retro-styled sneakers with a wedge lugged sole for a no-slip grip. Leather/synthetic upper Round toe Lace up Terry lining Padded insole.",
    price: "350",
    color_id: 3,
    user_id: 3,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445628/36df44281d46ea16cccb84af1f9ad2ba_nzf3ly.jpg"
  },
  {
    title: "V-RUN Mens North Sea Navy",
    brand: "Vibram",
    model: "V-Run",
    year: "2019",
    size: "9",
    description: "The Ultimate Vibram Fivefingers V-RUN Barefoot Running shoe. This is an ideal running shoe for those making the transition from traditional to minimalist shoe. The thinner sole lets you feel your run, connecting you to the true barefoot running experience.",
    price: "100",
    color_id: 1,
    user_id: 3,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445565/Vibram_Fivefingers_V-Run_Mens_North_Sea_Navy_1024x1024_uytolm_yp8llu.jpg"
  },
  {
    title: "Fila Disruptor II platform Rainbow",
    brand: "Fila",
    model: "Fila Disruptor",
    year: "2019",
    size: "11",
    description: "Limited edition of the Fila Disruptor with a twist! Those retro-styled sneakers are making a come back, with many colors!",
    price: "350",
    color_id: 3,
    user_id: 4,
    remote_photo_url: "https://res.cloudinary.com/pierreja/image/upload/v1574445513/FILA-Disruptor-II-Tie-Dye-Shoes-_313256-front-US_jvbxwp_n69tgm.jpg"
  },
  {
    title: 'Air Jordan',
    brand: 'Nike',
    model: 'Air Jordans I,',
    year: '1985',
    size: '10',
    description: 'The Air Jordan I was first produced for Michael Jordan in 1984. It was designed by Peter C. Moore.',
    price: '500',
    color_id: 1,
    user_id: 4,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574451590/Air_Jordan_1_Mid_-_Pine_Green_z3bfgk.jpg'
  },
  {
    title: 'Adidas Yeezy Boost 350 V2 ‘Antlia’ (Reflective)',
    brand: 'Adidas',
    model: 'Yeezy Boost 350 V2',
    year: '2019',
    size: '11',
    description: 'It is no secret that the Adidas Yeezy Boost 350 V2 has been suffering from a dip in interest, partially due to a bit of oversaturation, but a few of the recent releases have been able to reignite the flame for some. The “Antlia” colorway was a regional exclusive that released in Europe, Russia, and Ukraine earlier this month. Couple its rarity with the fact that it is drenched in reflective material, a detail that was offered in more limited quantities than the non-reflective version, and its attachment to Kanye West',
    price: '1200',
    color_id: 2,
    user_id: 4,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574451508/yeezy-boost-350-v2-antlia-reflective_juwcn6.jpg'
  },
  {
    title: 'Jordan 4 Retro Levis Black',
    brand: 'Levis',
    model: 'Jordan 4',
    year: '2017',
    size: '11',
    description: 'Combining two of the most recognizable brands in the world, Jordan and Levis came together to execute this beautiful Levi’s x Air Jordan 4 Black. The second release in the collection, this pair is draped in black denim on the upper, waxed laces, and a gum bottom. In addition, the shoe features a red Levis tag on the lateral side and a brown leather patch with a red Jumpman logo on the tongue. ',
    price: '480',
    color_id: 1,
    user_id: 4,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574451838/levis-air-jordan-4-official-look-002_boyfbk.jpg'
  },
  {
    title: 'Reebok Sock Run',
    brand: 'Reebok',
    model: 'Sock Run',
    year: '2019',
    size: '9',
    description: 'Black cotton and leather sock runner sneakers from Reebok featuring a round toe, a ridged rubber sole, a lace-up front fastening and branded heel counter.',
    price: '200',
    color_id: 1,
    user_id: 4,
    remote_photo_url: 'https://res.cloudinary.com/pierreja/image/upload/v1574451894/reebok-sock-run-r-banner_znbm4o.jpg'
  }
]

Product.create!(products_attributes)

Purchase.create!(user: User.find_by(email: "pierre@email.com"), product: Product.find(2))
Purchase.create!(user: User.find_by(email: "pierre@email.com"), product: Product.find(12))
Purchase.create!(user: User.find_by(email: "pierre@email.com"), product: Product.find(17))

# <img src"<%= product.photo %>" alt="<%= product.title %>" />

# url = 'http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png'
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save

puts 'Finished!'
