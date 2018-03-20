class Boat < ApplicationRecord
  belongs_to :user
  has_many :berth_orders, dependent: :destroy
  accepts_nested_attributes_for :berth_orders, allow_destroy: true,\
   reject_if: proc { |att| att['boat_id'].blank? ||\
    att['_destroy'] == '0' && \
    ( att['start_berth_order'].blank? ||
    att['start_berth_order'].to_date < DateTime.now || \
    ( !att['end_berth_order'].blank? && att['start_berth_order'].to_date >= att['end_berth_order'].to_date)) }

  validates :reg_number, :model, :width, :length, presence: true
  validates :width, :length, numericality: { greater_than_or_equal_to: 1.00 }
  validates :reg_number, uniqueness: true

  # def width=(value)
  #   new_value = value.gsub(",", ".")
  #   super(new_value)
  # end
  #
  # def length=(value)
  #   new_value = value.gsub(",", ".")
  #   super(new_value)
  # end

end
