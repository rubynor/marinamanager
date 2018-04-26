class AddBoatSeasonToBerthOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :berth_orders, :boat_season_id, :integer
  end
end
