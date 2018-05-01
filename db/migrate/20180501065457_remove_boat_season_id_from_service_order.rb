class RemoveBoatSeasonIdFromServiceOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :service_orders, :boat_season_id, :integer
  end
end
