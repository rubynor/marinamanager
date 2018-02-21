class RemoveLengthFromBoat < ActiveRecord::Migration[5.1]
  def change
    remove_column :boats, :length
  end
end
