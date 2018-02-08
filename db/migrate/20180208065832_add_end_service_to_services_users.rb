class AddEndServiceToServicesUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :services_users, :end_service, :date
  end
end
