require 'faker'

oneil = Agent.create(first_name: "oneil", last_name: "williams", phone: 123456789, image: "", bio: "hey. just working on this project here", brokerage: "HTFML Realty", rating_average: 5)

Account.create(email: "oneil@oneil.com", password: "oneil", password_confirmation: "oneil", user: oneil)
