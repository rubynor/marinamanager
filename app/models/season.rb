# == Schema Information
#
# Table name: seasons
#
#  id               :bigint(8)        not null, primary key
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  start_season_on  :date
#  end_season_on    :date
#  number_of_berths :integer
#

class Season < ApplicationRecord
  has_many :berth_orders



  scope :bookable_seasons, -> {
    where('end_season_on > ?', Date.today)}

  def total_berths_per_season(season)
    Season.find(season).number_of_berths
  end

  def self.available_berths_in(season)
    total_berths_per_season(season) - BerthOrder.where(season: season, status: 1).count
  end

end
