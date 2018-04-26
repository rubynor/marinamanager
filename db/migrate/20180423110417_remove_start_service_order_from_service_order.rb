class RemoveStartServiceOrderFromServiceOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :service_orders, :start_service_order, :date
  end
end
