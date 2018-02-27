class Service < ApplicationRecord
  has_many :service_orders
  has_many :users, through: :service_orders

  validates :title, :description, :price_per_month, presence: true
  validates :active, inclusion: { in: [true, false] }
  validates :price_per_month, numericality: { greater_than_or_equal_to: 10}
  validates :title, uniqueness: true

end
