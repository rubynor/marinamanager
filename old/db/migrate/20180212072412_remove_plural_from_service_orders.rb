class RemovePluralFromServiceOrders < ActiveRecord::Migration[5.1]
  def change
    rename_table :service_orders, :service_order
  end
end
