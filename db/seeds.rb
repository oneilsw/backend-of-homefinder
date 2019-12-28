require 'faker'

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

rob = Tenant.create(first_name: "Rob", last_name: "Mejia", phone: Faker::PhoneNumber.cell_phone, image: "", move_in_date: Faker::Date.in_date_period(year: 2020, month: 1), budget: rand(1500..6000))


Account.create(email: "oneil@oneil.com", password: "oneil", user: oneil)
Account.create(email: "gaida@gaida.com", password: "gaida", user: gaida)
Account.create(email: "jacky@jacky.com", password: "jacky", user: jacky)
Account.create(email: "pavel@pavel.com", password: "pavel", user: pavel)
Account.create(email: "rob@rob.com", password: "rob", user: rob)


10.times{Neighborhood.create(name: Faker::Address.community, detail: Faker::Lorem.paragraphs)}
10.times{Building.create(address: Faker::Address.street_address, year_built: rand(1919..2005), elevator: Faker::Boolean.boolean, super: Faker::Boolean.boolean,laundry: Faker::Boolean.boolean, neighborhood_id: rand(1..10))}
20.times{ApartmentListing.create(apartment: Faker::Address.secondary_address, rent: rand(2000..5000), lease_length: rand(12..24), available: true, broker_fee: 1000, bedroom_count: rand(0..4), bathroom_count: rand(1..2), availability_date: Faker::Date.in_date_period(year: 2020, month: 1), summary: "", image: images[rand(0..5)], building_id: rand(1..10), agent_id: rand(1..4))}

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