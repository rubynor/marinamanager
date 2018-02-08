class RemoveWidthFromBoat < ActiveRecord::Migration[5.1]
  def change
    remove_column :boats, :width
  end
end
