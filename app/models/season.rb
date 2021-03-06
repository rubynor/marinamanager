# == Schema Information
#
# Table name: seasons
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  start_season_on :date
#  end_season_on   :date
#  berths          :integer
#

class Season < ApplicationRecord
  has_many :berth_orders

  scope :bookable_seasons, -> {
    where('end_season_on > ?', Date.today)}

  # def total_berths_per_season(season)
  #   Season.find(season).berths
  # end

  def available_berths()
    self.berths - BerthOrder.where(season: self, status: 1).count
  end

  def to_s
    self.title + " (" + self.start_season_on.to_s + " - " + self.end_season_on.to_s + ")"
  end

end
