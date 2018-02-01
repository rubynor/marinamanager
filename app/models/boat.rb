class Boat < ApplicationRecord
    validates :reg_nr, presence: true
    validates :model, presence: true
    validates :width,  numericality:{only_integer: true, less_than: 20}
    validates :length, numericality:{only_integer: true, less_than: 55}
end
