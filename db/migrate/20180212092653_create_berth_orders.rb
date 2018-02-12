class CreateBerthOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :berth_orders do |t|
      t.integer :berth_id
      t.integer :boat_id
      t.decimal :price_per_month
      t.date    :start_date
      t.date    :end_date

      add_foreign_key :berth_id, :berth
      add_foreign_key :boat_id, :boat
      t.timestamps
    end
  end
end
