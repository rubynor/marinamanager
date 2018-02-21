class RenameStreetToStreetName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :street, :street_name
  end
end
