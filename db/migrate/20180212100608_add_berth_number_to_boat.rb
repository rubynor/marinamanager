class AddBerthNumberToBoat < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :berth_number, :integer
    add_foreign_key :berth_number, :berth
  end
end
