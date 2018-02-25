class Boat < ApplicationRecord
  belongs_to :user
  has_many :berth_orders

  validates :reg_number, :model, :width, :length, presence: true
  validates :width, :length, numericality: { greater_than_or_equal_to: 1.00 }
  validates :reg_number, uniqueness: true

end
