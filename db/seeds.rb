# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
  user1 = User.find_or_create_by(email: 'admin@gmail.com') do |user|
    user.user_level = 1
    user.first_name = 'Admin'
    user.last_name = 'Adminson'
    user.password = 'passord'
    user.phone_number = '80088008'
    user.street_name = 'Krunglevegen'
    user.street_number = '33'
    user.post_code = '2300'
  end

  user2 = User.find_or_create_by(email: 'bruker@gmail.com') do |user|
    user.user_level = 0
    user.first_name = 'Bruk'
    user.last_name = 'Brukerson'
    user.password = 'passord'
    user.phone_number = '90011001'
    user.street_name = 'Johnsgate'
    user.street_number = '500'
    user.post_code = '2303'
  end

  user3 = User.find_or_create_by(email: 'prebz@gmail.com') do |user|
    user.user_level = 0
    user.first_name = 'Preben'
    user.last_name = 'Smith'
    user.password = 'passord'
    user.phone_number = '47479293'
    user.street_name = 'Verksvegen'
    user.street_number = '3'
    user.post_code = '2285'
  end

# Services:
  service1 = Service.find_or_create_by(title: 'Båtløft') do |service|
    service.description = 'Båtløft under 10 tonn'
    service.cost = 1000
  end

  service2 = Service.find_or_create_by(title: 'Lettkran') do |service|
    service.description = 'Kran for å ta ned mast'
    service.cost = 800
  end

  service3 = Service.find_or_create_by(title: 'Strøm, vinter') do |service|
    service.description = 'Fastpris, fra oktober tilogmed april'
    service.cost = 3000
  end

  service4 = Service.find_or_create_by(title: 'Strøm, sommer') do |service|
    service.description = 'Fastpris, fra mai tilogmed september'
    service.cost = 2000
  end

  service5 = Service.find_or_create_by(title: 'Parkeringsplass') do |service|
    service.description = 'Personlig holdt av parkeringsplass ved bryggen'
    service.cost = 500
  end

  service6 = Service.find_or_create_by(title: 'Båtopplag') do |service|
    service.description = 'Egen plass til å sette båten med tilgang til strøm'
    service.cost = 3000
  end

# Piers
  pier1 = Pier.find_or_create_by(letter: 'A') do |pier|
    pier.length = 60
  end

  pier2 = Pier.find_or_create_by(letter: 'B') do |pier|
    pier.length = 30
  end

  pier3 = Pier.find_or_create_by(letter: 'C') do |pier|
    pier.length = 45
  end

# Berths: Creates as many berths as possible per pier.
  pier_array = [pier1, pier2, pier3]
  pier_array.each do |pier|
    counter = 1
    berths_per_pier = pier.length.to_i / 3
    while counter <= berths_per_pier
      Berth.find_or_create_by(berth_number: counter, pier_id: pier.id) do |berth|
        berth.berth_number = counter
        berth.width = 3
        berth.cost = 1250
        berth.pier_id = pier.id
      end
      counter += 1
    end
  end

# Boats
# Boat information from: https://www.nrk.no/livsstil/slik-velger-du-riktig-bat-1.7069737
  boat1 = Boat.find_or_create_by(reg_number: "S99-1") do |boat|
    boat.model = "Askeladden C6"
    boat.width = 2.45
    boat.length = 6.25
    boat.user_id = user2.id
  end

  boat2 = Boat.find_or_create_by(reg_number: "C33-4") do |boat|
    boat.model = "Sting 700 Weekender"
    boat.width = 2.55
    boat.length = 6.99
    boat.user_id = user2.id
  end

  boat3 = Boat.find_or_create_by(reg_number: "F23-6") do |boat|
    boat.model = "AMT 200 DCC"
    boat.width = 2.31
    boat.length = 6.05
    boat.user_id = user3.id
  end

  boat4 = Boat.find_or_create_by(reg_number: "E99-1") do |boat|
    boat.model = "VGA Turbo"
    boat.width = 2.8
    boat.length = 7.2
    boat.user_id = user2.id
  end

# BoatSeasons
  season1 = Season.find_or_create_by(title: "Sommer 2018") do |season|
    season.startSeason = DateTime.new(2018, 5, 1)
    season.endSeason = DateTime.new(2018, 9, 30)
  end

  season2 = Season.find_or_create_by(title: "Vinter 2018") do |season|
    season.startSeason = DateTime.new(2018, 10, 1)
    season.endSeason = DateTime.new(2019, 4, 30)
  end

  season3 = Season.find_or_create_by(title: "Sommer 2019") do |season|
    season.startSeason = DateTime.new(2019, 5, 01)
    season.endSeason = DateTime.new(2019, 9, 30)
  end

  season4 = Season.find_or_create_by(title: "Vinter 2019") do |season|
    season.startSeason = DateTime.new(2019, 10, 1)
    season.endSeason = DateTime.new(2020, 4, 01)
  end


# Orders
ServiceOrder.delete_all
BerthOrder.delete_all
Order.delete_all
order1 = Order.create(user_id: user2.id)

# ServiceOrders
  service_order1 = ServiceOrder.find_or_create_by(user_id: user2.id, service_id: service1.id, order_id: order1.id)
  service_order2 = ServiceOrder.find_or_create_by(user_id: user2.id, service_id: service2.id)
  service_order3 = ServiceOrder.find_or_create_by(user_id: user2.id, service_id: service2.id)

# BerthOrders
  berth_order1 = BerthOrder.find_or_create_by(boat_id: boat1.id, berth_id: Berth.first.id)
  berth_order2 = BerthOrder.find_or_create_by(boat_id: boat2.id, berth_id: Berth.second.id)
  berth_order3 = BerthOrder.find_or_create_by(boat_id: boat3.id, berth_id: Berth.third.id)

