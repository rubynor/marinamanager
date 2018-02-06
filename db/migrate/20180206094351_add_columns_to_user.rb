class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone, :string, :limit => 8
    add_column :users, :zip_number, :numeric, :limit => 4
    add_column :users, :house_number, :string
  end
end
