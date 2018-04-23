class RemoveStartBerthOrderFromBerthOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :berth_orders, :start_berth_order, :date
  end
end
