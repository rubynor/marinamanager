class AddBoatSeasonToServiceOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :service_orders, :boat_season_id, :integer
  end
end
