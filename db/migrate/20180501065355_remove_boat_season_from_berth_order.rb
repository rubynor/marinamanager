class RemoveBoatSeasonFromBerthOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :berth_orders, :boat_season, :integer
  end
end
