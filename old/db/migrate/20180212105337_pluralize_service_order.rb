class PluralizeServiceOrder < ActiveRecord::Migration[5.1]
  def change
    rename_table :service_order, :service_orders
  end
end
