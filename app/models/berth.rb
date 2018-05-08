class Berth < ApplicationRecord
  # TODO: Validering
  # validates :berth_number, :width, :cost, presence: true
  # validates :cost, numericality: { greater_than_or_equal_to: 10.00 }
  # validates: Et berth_number må være unikt pr pier.letter


  has_many :berth_orders


end
