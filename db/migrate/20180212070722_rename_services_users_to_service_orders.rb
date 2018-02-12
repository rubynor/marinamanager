class RenameServicesUsersToServiceOrders < ActiveRecord::Migration[5.1]
  def change
    rename_table :services_users, :service_orders
  end
end
