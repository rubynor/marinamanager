class Boat < ApplicationRecord
  belongs_to :user
  has_many :berth_orders, dependent: :destroy
  accepts_nested_attributes_for :berth_orders, allow_destroy: true

  validates :reg_number, :model, :width, :length, presence: true
  validates :width, :length, numericality: { greater_than_or_equal_to: 1.00 }
  validates :reg_number, uniqueness: true
  scope :unassigned, -> { berth_orders.empty? }


  # def width=(value)
  #   if value.present?
  #     new_value = value.gsub(",", ".")
  #     super(new_value)
  #   end
  # end
  #
  # def length=(value)
  #   if value.present?
  #     new_value = value.gsub(",", ".")
  #     super(new_value)
  #   end
  # end
end
