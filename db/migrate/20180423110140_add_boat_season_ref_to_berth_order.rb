class AddBoatSeasonRefToBerthOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :berth_orders, :boat_season, foreign_key: true
  end
end
