class DropServiceOrders < ActiveRecord::Migration[5.1]
  def change
    drop_table :service_orders
  end
end
