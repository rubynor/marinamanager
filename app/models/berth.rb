class Berth < ApplicationRecord
  belongs_to :pier
  has_many :berth_orders
end
