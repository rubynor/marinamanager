class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :phone, :numeric
    remove_column :users, :zip_code, :numeric
    remove_column :users, :house_number, :numeric
  end
end
