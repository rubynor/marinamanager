class Berth < ApplicationRecord
  belongs_to :pier
  has_many :berth_orders

  validates :berth_number, :width, :price_per_month, presence: true
  validates :in_service, inclusion: { in: [true, false] }
  validates :price_per_month, numericality: { greater_than_or_equal_to: 10.00 }

  # validates: Et berth_number må være unikt pr pier.letter

end
