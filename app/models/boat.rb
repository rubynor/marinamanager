class Boat < ApplicationRecord
    validates :reg_nr, presence: true
    validates :model, presence: true
    validates :width,  numericality:{less_than_or_equal_to: 20}
    validates :length, numericality:{less_than_or_equal_to: 55}
end
