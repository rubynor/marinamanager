# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
  user_1 = User.find_or_create_by!(email: 'admin@gmail.com') do |user|
    user.user_level = 1
    user.password = 'passord'
    user.password_confirmation = 'passord'
  end

  user_2 = User.find_or_create_by!(email: 'bruker@gmail.com') do |user|
    user.user_level = 0
    user.password = 'passord'
    user.password_confirmation = 'passord'
  end

  user_3 = User.find_or_create_by!(email: 'bruker2@gmail.com') do |user|
    user.user_level = 0
    user.password = 'passord'
    user.password_confirmation = 'passord'
  end

# Boats
  boat_1 = Boat.find_or_create_by!(user: user_2, name: 'Furia') do |boat|
    boat.width = 3
  end

  boat_2 = Boat.find_or_create_by!(user: user_3, name: 'Valkyrie') do |boat|
    boat.width = 3
  end

# Seasons
  season_1 = Season.find_or_create_by!(title: 'Vinter 2018') do |season|
    season.start_season_on = Date.new(2017, 9, 1)
    season.end_season_on = Date.new(2018, 4, 30)
    season.berths = 20
  end

  season_2 = Season.find_or_create_by!(title: 'Sommer 2018') do |season|
    season.start_season_on = Date.new(2018, 5, 1)
    season.end_season_on = Date.new(2018, 9, 30)
    season.berths = 20
  end

  season_3 = Season.find_or_create_by!(title: 'Vinter 2019') do |season|
    season.start_season_on = Date.new(2018, 9, 1)
    season.end_season_on = Date.new(2019, 4, 30)
    season.berths = 20
  end

  season_4 = Season.find_or_create_by!(title: 'Sommer 2019') do |season|
    season.start_season_on = Date.new(2019, 5, 1)
    season.end_season_on = Date.new(2019, 9, 30)
    season.berths = 20
  end

  season_5 = Season.find_or_create_by!(title: 'Vinter 2020') do |season|
    season.start_season_on = Date.new(2019, 9, 1)
    season.end_season_on = Date.new(2020, 4, 30)
    season.berths = 20
  end

  season_6 = Season.find_or_create_by!(title: 'Sommer 2020') do |season|
    season.start_season_on = Date.new(2020, 5, 1)
    season.end_season_on = Date.new(2020, 9, 30)
    season.berths = 20
  end



# Status
  status_1 = Status.find_or_create_by!(status: 'Godkjent')
  status_2 = Status.find_or_create_by!(status: 'Under behandling')
  status_3 = Status.find_or_create_by!(status: 'Avvist')

# Berth Orders
  berth_order_1 = BerthOrder.find_or_create_by!(boat_id: boat_1.id, season: season_1) do |berth_order|
    berth_order.status = status_1
  end

  berth_order_2 = BerthOrder.find_or_create_by!(boat_id: boat_2.id, season: season_1) do |berth_order|
    berth_order.status = status_2
  end