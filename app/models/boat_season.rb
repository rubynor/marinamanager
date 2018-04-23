class BoatSeason < ApplicationRecord
  has_many berth_orders
  has_many service_orders
end
