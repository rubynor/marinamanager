class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_column :boats,  :user_id, :integer
    add_column :berths, :pier_id, :integer

    add_foreign_key :boats, :users, name: :user_id
    add_foreign_key :berths, :piers, name: :pier_id
  end
end
