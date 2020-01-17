require 'faker'
require 'rest-client'
require 'dotenv'

# ActiveRecord::Base.connection.tables.each do |t| 
#     ActiveRecord::Base.connection.reset_pk_sequence!(t)
# end

# response = RestClient::Request.execute(
#     method: :get,
#     url: "https://newsapi.org/v2/everything",
#     headers: {
#         params:{
#             "apiKey": ENV["API_KEY"],
#             "qInTitle": "real estate",
#             "from": "2020-1-1",
#             "sortBy": "relevancy"
#         }       
#     }
# )

# article_data = JSON.parse(response)["articles"]
   
# article_data.map do |dataInfo|
#     Article.create(
#         source: dataInfo["source"]["name"],
#         author: dataInfo["author"],
#         title: dataInfo["title"],
#         description: dataInfo["description"],
#         url: dataInfo["url"],
#         image: dataInfo["urlToImage"],
#         content: dataInfo["content"]
#     )
# end

images = [
            "https://cdngeneral.rentcafe.com/dmslivecafe/3/45643/Background%202%20Apartment%201600x%201020.jpg?crop=(0,0,300,191)&cropxunits=300&cropyunits=191&quality=85&scale=both&",
            "https://q-cf.bstatic.com/images/hotel/max1024x768/134/134203664.jpg",
            "https://images1.apartments.com/i2/ghyrA3qX-4cjclhixLpe5fOJDbGsSNbW3kvhRmz_fYE/117/here-apartments-champaign-il-living-room.jpg",
            "https://res.cloudinary.com/g5-assets-cld/image/upload/x_115,y_0,h_854,w_1281,c_crop/q_auto,f_auto,fl_lossy,g_center,h_1000,w_1500/g5/g5-c-icwh344r-acacia-capital-corporation-client/g5-cl-1hbicafvk5-madrid-apartments/uploads/Untitled8_eilgii.jpg",
            "https://www.parkvalley-living.com/wp-content/uploads/sites/581/2016/03/living-area-768x392.jpg",
            "https://www.indigoapthomes.com/content/dam/aimco-properties/043315/1072x836/indigo-homepage-interiorkitchen-1072x836.jpg"
        ]


oneil = Agent.create(first_name: "oneil", last_name: "williams", phone: Faker::PhoneNumber.cell_phone, image: "", bio: "hey. just working on this project here", brokerage: "HTFML Realty", rating_average: rand(4..5))
gaida = Agent.create(first_name: "gaida", last_name: "escobar", phone: Faker::PhoneNumber.cell_phone, image: "", bio: "the peruvian princess", brokerage: "HTFML Realty", rating_average: rand(4..5))
jacky = Agent.create(first_name: "jacky", last_name: "feng", phone: Faker::PhoneNumber.cell_phone, image: "", bio: "love me some sports", brokerage: "HTFML Realty", rating_average: rand(4..5))
pavel = Agent.create(first_name: "pavel", last_name: "ilin", phone: Faker::PhoneNumber.cell_phone, image: "", bio: "lets get some tea.", brokerage: "HTFML Realty", rating_average: rand(4..5))

rob = Tenant.create(first_name: "Rob", last_name: "Mejia", phone: Faker::PhoneNumber.cell_phone, image: "https://media.licdn.com/dms/image/C5603AQHEaSWrrsF3dQ/profile-displayphoto-shrink_200_200/0?e=1583366400&v=beta&t=I9hvzQD3NUbuHHexXR-69GuWec98rm8iSxI9rIh1_H8", move_in_date: Faker::Date.in_date_period(year: 2020, month: 1), budget: rand(1500..6000))


Account.create(email: "oneil@oneil.com", password: "oneil", user: oneil)
Account.create(email: "gaida@gaida.com", password: "gaida", user: gaida)
Account.create(email: "jacky@jacky.com", password: "jacky", user: jacky)
Account.create(email: "pavel@pavel.com", password: "pavel", user: pavel)
Account.create(email: "rob@rob.com", password: "rob", user: rob)


10.times{Neighborhood.create(name: Faker::Address.community, detail: Faker::Lorem.paragraphs)}
10.times{Building.create(address: Faker::Address.street_address, year_built: rand(1919..2005), elevator: Faker::Boolean.boolean, super: Faker::Boolean.boolean,laundry: Faker::Boolean.boolean, neighborhood_id: rand(1..10))}
20.times{ApartmentListing.create(apartment: Faker::Address.secondary_address, rent: rand(2000..5000), lease_length: rand(12..24), available: true, broker_fee: 1000, bedroom_count: rand(0..4), bathroom_count: rand(1..2), availability_date: Faker::Date.in_date_period(year: 2020, month: 1), summary: "", image: images[rand(0..5)], building_id: rand(1..10), agent_id: rand(1..4))}

kitchen_pictures = [
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kitchen-ideas-hbx110119wholehome-015-1572549271.jpg",
    "https://lda.lowes.com/is/image/Lowes/DP18-147587_L1_KitchenCat_Update_hero_1-1_dt_2col_KitchenUpgrade-Default?scl=1",
    "https://st.hzcdn.com/fimgs/90f15e760c36401e_1566-w312-h312-b0-p0--transitional-kitchen.jpg",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunny-white-kitchen-1551713554.jpg?crop=0.670xw:1.00xh;0.00801xw,0&resize=640:*",
    "https://images.squarespace-cdn.com/content/v1/5212c2c8e4b0c307574854ec/1572353949760-22T1X007LJ4K5TWUW4TE/ke17ZwdGBToddI8pDm48kEc6DKFOx3cpvkyhZQwPkJYUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKc53GO0vWykWK-lIOAtsaJ7vbB1JiXq7byw-6Ogo-kuNnXzR_WIuWSVqqqoqhN8EA5/Mastay+kitchen+design+4_web-min.jpg?format=2500w",
    "https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2018/6/27/0/FOD18_Connie-Vernich_Black-Casual-Kitchen_1.jpg.rend.hgtvcom.616.462.suffix/1530128538803.jpeg",
    "https://www.kitchencraft.com/-/media/kitchencraft/pages/homepage/asher_gray_kitchen_cabinets.jpg?h=774&w=1286",
    "https://contentgrid.homedepot-static.com/hdus/en_US/DTCCOMNEW/fetch/Category_Pages/Kitchen/KI-MOB-L1-and-L2-cabinets.jpg",
    "https://www.kbrkitchenandbath.com/wp-content/uploads/2018/04/Singer0.jpg",
    "https://kitchenaid-h.assetsadobe.com/is/image/content/dam/business-unit/whirlpool/en-us/marketing-content/site-assets/page-components/style-hub/images/1%262_color/BlackStainless.jpg?fit=constrain&fmt=jpg&utc=2019-03-19T21:59:33Z&wid=2880",
    "http://www.sdgyoungleaders.org/wp-content/uploads/2019/11/Kitchen-L1-hero-mob.jpg"
]

# i = 0
# while i < kitchen_pictures.length do 
#     Picture.create(url: kitchen_pictures[i], apartment_listing_id: i + 1)
# end 

# bathroom_pictures = []
# bedroom_pictures = []

#kitchen pictures
# Picture.create(url: , apartment_listing_id: )

#bath pictures
# Picture.create(url: , apartment_listing_id: )
#bedroom pictures


# Neighborhood.create(name: "", detail: "")
# Building.create(address: "", year_built: "", elevator: , super: ,laundry: , neighborhood: )
# ApartmentListing.create(apartment: "", rent: , lease_length: , broker_fee: available: , bedroom_count: , bathroom_count: , availablity_date: , building: ,agent:)

puts "Destroying all Users"
sleep(0.5)
puts "Destroying all 'Accounts'"
sleep(0.5)
puts "Destroying all Neighborhoods"
sleep(0.5)
puts "Destroying all Buildings"
sleep(0.5)
puts "Destroying all Apartment Listings"
sleep(0.5)
puts "Done!"
sleep(0.5)
puts "Seeded"