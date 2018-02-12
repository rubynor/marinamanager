class EditBerthTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :berths, :width
    remove_column :berths, :price_per_month
    remove_column :berths, :reg_nr
    remove_column :berths, :in_service
    remove_column :berths, :name
    add_column :berths, :berth_number, :integer
    add_column :berths, :width, :decimal
    add_column :berths, :in_service, :boolean
  end
end
