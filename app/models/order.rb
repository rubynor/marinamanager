class Order < ApplicationRecord

  belongs_to :user
  belongs_to :season
  has_many :service_orders
  has_many :berth_orders
end
