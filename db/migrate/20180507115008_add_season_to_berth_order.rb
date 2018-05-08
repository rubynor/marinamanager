class AddSeasonToBerthOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :berth_orders, :season, :string
  end
end
