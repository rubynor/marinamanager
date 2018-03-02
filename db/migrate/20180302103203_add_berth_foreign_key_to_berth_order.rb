class AddBerthForeignKeyToBerthOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :berths, :berth_order_id, :integer
    add_foreign_key :berths, :berth_orders, name: :berth_order_id
  end
end
