class RenameHouseNumberToStreetNumber < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :house_number, :street_number
  end
end
