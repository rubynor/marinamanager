class RemoveColumnsFromBerth < ActiveRecord::Migration[5.1]
  def change
    remove_column :berths, :cost, :decimal
    remove_column :berths, :pier_id, :integer
  end
end
