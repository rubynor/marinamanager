class AddUserToBerthOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :berth_orders, :user, foreign_key: true
  end
end
