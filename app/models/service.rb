class Service < ApplicationRecord
  has_many :users, through: :service_orders
end
