puts "🌱 Seeding spices..."

# Seed your database here

Customer.create(name: "Linda Dean", phone_number:2026358545,email:"casesque@gmailwe.com")
Customer.create(name:"Tabitha",phone_number:4051694038,email:"TabithaV@gmail.com")
Customer.create(name:"Louise",phone_number:5510987332,email:"LouiseBelcher@yahoo.com")
Customer.create(name:"Jinx",phone_number:5098894938,email:"JinxPiltover@hotmail.com")

# Seed your database here
Candy.create(name:"Bubblicious",price: 0.99, inventory:5,image:"https://www.candywarehouse.com/item-images/126664-01_watermelon-bubblicious-bubble-gum-packs-18-piece-box.jpg?resizeid=102&resizeh=500&resizew=500",quantity:0)
Candy.create(name:"Fruit Stripe",price: 1.79, inventory:10,image:"http://s7.orientaltrading.com/is/image/OrientalTrading/k1613?$PDP_VIEWER_IMAGE$",quantity:0)
Candy.create(name:"Astronaut Ice Cream",price: 5.99, inventory:4,image:"https://tse4.mm.bing.net/th?id=OIP.WvK1SM9xzhVCsrmcSB_qwAHaFS&pid=Api&P=0&w=226&h=161",quantity:0)
Candy.create(name:"Candy Cigarettes",price: 1.10, inventory:12,image:"http://noisebreak.com/wp-content/uploads/2017/03/candy-cigarette.jpg",quantity:0)
Candy.create(name:"Sugar Daddy",price: 1.29, inventory:5, image:"https://mk.ssb-media.com/images/p354363b_2x.jpg",quantity:0)
Candy.create(name:"Sugar Babies",price: 1.69, inventory:5,image:"https://www.shopmyexchange.com/products/images/xlarge/8648092_0000.jpg",quantity:0)
Candy.create(name:"Bottle Caps",price: 1.00, inventory:6,image:"https://www.candywarehouse.com/item-images/130882-01_bottle-caps-candy-5-ounce-packs-10-piece-box.jpg",quantity:0)
Candy.create(name:"Pop Rocks",price: 0.99, inventory:8,image:"https://cdn6.bigcommerce.com/s-43pja/products/2516/images/2248/51040__24576.1451397877.1280.1280.jpg?c=2",quantity:0)
Candy.create(name:"Mary Jane",price: 0.33, inventory:20,image:"http://www.ohnuts.com/showImage.cfm/extra-large/Mary-Jane11.jpg",quantity:0)
Candy.create(name:"Double Bubble ",price: 0.25, inventory:16,image:"https://cdn.shopify.com/s/files/1/0269/2121/products/Dubble_Bubble_Gum.jpeg?v=1402444674",quantity:0)
Candy.create(name:"Bit-O-Honey",price: 0.33, inventory:9,image:"https://onlinegrocerymarket.com/wp-content/uploads/2016/06/SweetGourmet-Bit-O-Honey-Retro-Candy-0.jpg",quantity:0)
Candy.create(name:"Bubble Gum Cigars",price: 0.59, inventory:36,image:"http://www.ohnuts.com/showImage.cfm/extra-large/El-Bubble-1.jpg",quantity:0)
Candy.create(name:"Choward's Violet Mints",price: 1.49, inventory:5,image:"https://www.candywarehouse.com/item-images/125356-01_c-howards-violet-mint-squares-candy-packs-24-piece-box.jpg?resizeid=102&resizeh=500&resizew=500",quantity:0)

# Order.create(order_status:"Shipped", address:"4453 Elliott Street", state:"New Hampshire", zipcode:"03101",credit_card_number:4416587891748630,card_holder_name: "Linda Dean", cvc:563, customer_id:1)
# Order.create(order_status:"Incomplete",address:"1102 Ferrell Street", state:"Maine", zipcode:"04619",credit_card_number:4013578198765606,card_holder_name: "Tabitha Victoria",cvc:588, customer_id:2)
# Order.create(order_status:"Processing", address:"4708 Terry Lane", state:"Florida", zipcode:"32801",credit_card_number:5322661549404464,card_holder_name: "Louise Belcher",cvc:962, customer_id:3)
# Order.create(order_status:"Shipped",address:"100 Southern Street", state:"New York", zipcode:"11758",credit_card_number:340358027461160,card_holder_name: "Jinx Piltover",cvc:215, customer_id:4)

OrderCandy.create(quantity:2,candy_id:1,order_id:1)
OrderCandy.create(quantity:2,candy_id:2,order_id:1)
OrderCandy.create(quantity:3,candy_id:3,order_id:1)
OrderCandy.create(quantity:3,candy_id:5,order_id:4)
OrderCandy.create(quantity:3,candy_id:4,order_id:4)
OrderCandy.create(quantity:3,candy_id:7,order_id:4)

# Seed your database here

puts "✅ Done seeding!"
