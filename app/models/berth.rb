class Berth < ApplicationRecord
  belongs_to :pier
  belongs_to :berth_orders, dependent: :destroy, optional: true

  validates :berth_number, :width, :cost, presence: true
  validates :cost, numericality: { greater_than_or_equal_to: 10.00 }

  # validates: Et berth_number må være unikt pr pier.letter

end
