# == Schema Information
#
# Table name: statuses
#
#  id         :bigint(8)        not null, primary key
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Status < ApplicationRecord

  has_many :berth_orders

  def confirmed?
    status == 1
  end

  def pending?
    status == 2
  end

  def denied?
    status == 3
  end

end
