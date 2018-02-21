class Boat < ApplicationRecord
    belongs_to :user
    has_many :berth_orders
end
    ## Drøyer valideringen til DB'en er ferdig satt opp :)  JSE
    # validates :reg_nr, presence: true
    # validates :model, presence: true
    # validates :width,  numericality:{less_than_or_equal_to: 20}
    # validates :length, numericality:{less_than_or_equal_to: 55}
