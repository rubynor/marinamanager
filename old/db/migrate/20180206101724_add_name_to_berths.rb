class AddNameToBerths < ActiveRecord::Migration[5.1]
  def change
    add_column :berths, :name, :string
  end
end
