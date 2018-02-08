class AddLengthToBoat < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :length, :decimal
  end
end
