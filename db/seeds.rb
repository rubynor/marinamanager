# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User:     user_level, first_name, last_name, email, password, phone_number, street, house_number, zip_code
# Boat:     reg_nr, model, width, length, user_id
# Service:  title, description, price_per_month, start_service, end_service


User.destroy_all
User.create!([
		{ user_level: 1, first_name: "Harald", last_name: "Smegma", email: "smegma@gmail.com",
		  password: "passord", phone_number: "80088008", street: "Krunglevegen", house_number: "33", zip_code: "2300"},
		{ user_level: 0, first_name: "Johnny", last_name: "Johnson", email: "johnny@gmail.com",
		  password: "passord", phone_number: "90011001", street: "john street", house_number: "500", zip_code: "2303"},
		{ user_level: 0, first_name: "Preben", last_name: "Smith", email: "prebz@gmail.com",
		  password: "passord", phone_number: "47479293", street: "Verksvegen", house_number: "3", zip_code: "2285"}
             ])


Boat.destroy_all
# Båtdetaljer hentet fra artikkel: https://www.nrk.no/livsstil/slik-velger-du-riktig-bat-1.7069737
# Båter må ha inn fremmednøkkel docking_space_id fra tabellen docking_space (lagt inn i trello)
Boat.create!([
  { reg_nr: "S99-1", model: "Askeladden C6", width: 2.45, length: 6.25, user_id: 1 },
  { reg_nr: "C33-4", model: "Sting 700 Weekender", width: 2.55, length: 6.99, user_id: 2 },
  { reg_nr: "F23-6", model: "AMT 200 DCC", width: 2.31, length: 6.05, user_id: 1 }
             ])


Service.destroy_all
Service.create!([ 
  { title: "Medlemskap", description: "Medlemskontigent", price_per_month: 350 },
  { title: "Bryggeplass", description: "Prisen er pr. breddemeter", price_per_month: 300 },
  { title: "Strøm, Opplag", description: "Gjelder fra oktober til april", price_per_month: 600 },
	{ title: "Strøm, Brygge", description: "Gjelder fra mai til september", price_per_month: 800 }
                ])
