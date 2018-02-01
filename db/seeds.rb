# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create!([
		{ email: "something@gmail.com", last_name: "Haugen", first_name: "Troels",
		      phone: "90052300", bank_account: "26703012312", user_level: "0" }
             ])

Boat.destroy_all

Boat.create!([
                 { reg_nr: "S99-1", model: "Aphrodite 36", width: 3, length: 5, user_id: 1 }

             ])