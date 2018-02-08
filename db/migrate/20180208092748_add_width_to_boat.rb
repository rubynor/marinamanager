class AddWidthToBoat < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :width, :decimal
  end
end
