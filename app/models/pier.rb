class Pier < ApplicationRecord
  has_many :berths

  validates :letter, presence: true
  
end
