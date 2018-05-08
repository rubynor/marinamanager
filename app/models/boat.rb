class Boat < ApplicationRecord

  # TODO: Validering (gammel kode under)
  # validates :reg_number, :model, :width, :length, presence: true
  # validates :width, :length, numericality: { greater_than_or_equal_to: 1.00 }
  # validates :reg_number, uniqueness: true
  # scope :unassigned, -> { berth_orders.empty? }

  # TODO: Godta punktum og komma i tall
  #

  belongs_to :user
  has_many :berth_orders

  validates :name, :uniqueness => {scope: :user_id}
  validates :user_id, :presence => true

end
