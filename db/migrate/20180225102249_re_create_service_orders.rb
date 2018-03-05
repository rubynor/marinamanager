class ReCreateServiceOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :service_orders do |t|
      t.belongs_to :user, index: true
      t.belongs_to :service, index: true
      t.date :start_service_order
      t.date :end_service_order

      t.timestamp
    end
  end
end
