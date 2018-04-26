class RemoveEndServiceOrderFromServiceOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :service_orders, :end_service_order, :date
  end
end
