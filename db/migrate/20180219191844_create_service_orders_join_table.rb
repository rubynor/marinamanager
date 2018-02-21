class CreateServiceOrdersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :service_orders, :id => false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :service, index: true
      t.date :start_service
      t.date :end_service

      add_foreign_key :user_id, :user
      add_foreign_key :service_id, :service

      t.timestamp
    end
  end
end
