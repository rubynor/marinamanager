class RemoveColumnsFromBoat < ActiveRecord::Migration[5.1]
  def change
    remove_column :boats, :reg_number, :string
    remove_column :boats, :model, :string
    remove_column :boats, :length, :decimal
  end
end
