class RemoveBoatSeasonIdFromBerthOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :berth_orders, :boat_season_id, :integer
  end
end
