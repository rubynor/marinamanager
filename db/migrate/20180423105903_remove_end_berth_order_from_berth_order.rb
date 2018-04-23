class RemoveEndBerthOrderFromBerthOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :berth_orders, :end_berth_order, :date
  end
end
