class CreateServiceOrdersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :service_orders do |t|
      t.belongs_to :user, index: true
      t.belongs_to :service, index: true
      t.date :start_service
      t.date :end_service

      add_foreign_key :users, :services
      add_foreign_key :services, :users

      t.timestamp
    end
  end
end
