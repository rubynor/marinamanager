class AddStatusToBerthOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :berth_orders, :status, foreign_key: true
  end
end
