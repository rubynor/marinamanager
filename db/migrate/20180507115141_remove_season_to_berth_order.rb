class RemoveSeasonToBerthOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :berth_orders, :season, :string
  end
end
