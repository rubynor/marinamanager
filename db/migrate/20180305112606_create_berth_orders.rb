class CreateBerthOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :berth_orders do |t|
      t.belongs_to :berth, index: true
      t.belongs_to :boat, index: true
      t.integer :boat_season
      t.date :start_berth_order
      t.date :end_berth_order

      t.timestamp
    end
  end
end
