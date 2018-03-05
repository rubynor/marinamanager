class Pier < ApplicationRecord
  has_many :berths, dependent: :destroy

  validates :letter, presence: true

end
