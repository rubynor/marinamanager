class AddStartServiceToServicesUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :services_users, :start_service, :date
  end
end
