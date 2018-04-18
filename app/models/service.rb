class Service < ApplicationRecord
  has_many :service_orders
  has_many :users, through: :service_orders

  validates :title, :description, :cost, presence: true
  validates :cost, numericality: { greater_than_or_equal_to: 10}
  validates :title, uniqueness: true

end
