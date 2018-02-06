class AddSplitAddressToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :street, :string
    add_column :users, :house_number, :numerical
    add_column :users, :zip_code, :numerical
  end
end
