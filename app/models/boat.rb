# == Schema Information
#
# Table name: boats
#
#  id         :bigint(8)        not null, primary key
#  width      :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  name       :string
#

class Boat < ApplicationRecord
  belongs_to :user
  has_many :berth_orders

  validates :name, :uniqueness => {scope: :user_id}
  validates :user_id, :presence => true

  def format_width
    self.width = self.width.to_s.gsub(',', '.')
  end

end
