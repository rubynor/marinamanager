class Berth < ApplicationRecord
    belongs_to :pier
    has_many :berth_orders
end
    ### Drøyer valideringen til DB'en er ferdig satt opp :) JSE
    # validates :name, presence: true
    # validates :pier, presence: true
    # validates :width, presence: true
    # The format of Price should be n.nn
    # validates :price_per_month, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/, message: 'Format 990 or 1250.50' }
    # validates :price_per_month, presence: true, format: { with: /\d+(\.\d{2})?/, message: 'Format 990 or 1250.50' }
