class Berth < ApplicationRecord
  belongs_to :pier
  has_many :berth_orders

  validates :berth_number, :width, :price_per_month, :active, presence: true
  validates :price_per_month, numericality: { greater_than_or_equal_to: 10.00 }

  # validates: Et berth_number må være unikt pr pier.letter
  
end
