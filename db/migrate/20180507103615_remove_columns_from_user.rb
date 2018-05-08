class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :phone_number
    remove_column :users, :street_name
    remove_column :users, :street_number
    remove_column :users, :post_code
  end
end
