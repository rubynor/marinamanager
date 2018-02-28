# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.destroy_all
 # User.create!([
 #  { user_level: 1, first_name: "Admin", last_name: "Adminson", email: "admin@gmail.com", password: "passord",
 # 	  phone_number: "80088008", street_name: "Krunglevegen", street_number: "33", post_code: "2300" },
 # 	{ user_level: 0, first_name: "Bruk", last_name: "Brukerson", email: "bruker@gmail.com", password: "passord",
 # 	  phone_number: "90011001", street_name: "Johnsgate", street_number: "500", post_code: "2303" },
 # 	{ user_level: 0, first_name: "Preben", last_name: "Smith", email: "prebz@gmail.com", password: "passord",
 # 	  phone_number: "47479293", street_name: "Verksvegen", street_number: "3", post_code: "2285" }
 #               ])
  user1 = User.create!(user_level: 1, first_name: "Admin", last_name: "Adminson", email: "admin@gmail.com", password: "passord",
 	  phone_number: "80088008", street_name: "Krunglevegen", street_number: "33", post_code: "2300")
  user2 = User.create!(user_level: 0, first_name: "Bruk", last_name: "Brukerson", email: "bruker@gmail.com", password: "passord",
 	  phone_number: "90011001", street_name: "Johnsgate", street_number: "500", post_code: "2303")
  user3 = User.create!(user_level: 0, first_name: "Preben", last_name: "Smith", email: "prebz@gmail.com", password: "passord",
 	  phone_number: "47479293", street_name: "Verksvegen", street_number: "3", post_code: "2285")



 Service.destroy_all
 Service.create!([
  { id: 1, title: "Medlemskap", description: "Medlemskontigent", price_per_month: 350, active: false },
  { id: 2, title: "Bryggeplass", description: "Prisen er pr. breddemeter", price_per_month: 300, active: true},
  { id: 3, title: "Strøm, Opplag", description: "Gjelder fra oktober til april", price_per_month: 600, active: true},
 	{ id: 4, title: "Strøm, Brygge", description: "Gjelder fra mai til september", price_per_month: 800, active: true}
                 ])

 Pier.destroy_all
 Pier.create!([
		 { id: 1, letter: "A" }, { id: 2, letter: "B" }
              ])

 Berth.destroy_all
 Berth.create!([
		{ id: 1, pier: Pier.first, berth_number: 1, width: 3, price_per_month: 250, in_service: false },
		{ id: 2, pier: Pier.first, berth_number: 2, width: 3, price_per_month: 250, in_service: true }
              ])

Boat.destroy_all
# Båtdetaljer hentet fra artikkel: https://www.nrk.no/livsstil/slik-velger-du-riktig-bat-1.7069737
boat1 = Boat.create!(reg_number: "S99-1", model: "Askeladden C6", width: 2.45, length: 6.25, user_id: user1.id )
boat2 = Boat.create!( reg_number: "C33-4", model: "Sting 700 Weekender", width: 2.55, length: 6.99, user_id: user2.id )
boat3 = Boat.create!( reg_number: "F23-6", model: "AMT 200 DCC", width: 2.31, length: 6.05, user_id: user3.id )
          



ServiceOrder.delete_all
ServiceOrder.create!([
	{ id: 1, service_id: 1, user_id: user1.id, start_service: Date.new(2018, 02, 12), end_service: Date.new(2018, 05, 12) },
	{ id: 2, service_id: 1, user_id: user2.id, start_service: Date.new(2018, 01, 12), end_service: Date.new(2018, 04, 12) },
	{ id: 3, service_id: 2, user_id: user3.id, start_service: Date.new(2018, 02, 13), end_service: Date.new(2018, 05, 13) }
                     ])

BerthOrder.destroy_all
BerthOrder.create!([
	{ id: 1, berth_id: 1, boat_id: boat2.id, start_date: Date.new(2018, 02, 01), end_date: Date.new(2018, 07, 01) },
	{ id: 2, berth_id: 2, boat_id: boat1.id, start_date: Date.new(2018, 02, 12), end_date: Date.new(2018, 06, 12) }
                    ])
