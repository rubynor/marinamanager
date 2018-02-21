class DbPurge < ActiveRecord::Migration[5.1]
  def change
    # User changes:
    remove_column :users, :bank_account
    rename_column :users, :zip_code, :post_code

    # Boat changes:
    remove_column :boats, :berth_number
    rename_column :boats, :reg_nr, :reg_number

    # BerthOrder changes:
    remove_column :berth_orders, :price_per_month

    # Berth changes:
    remove_column :berths, :pier
    add_column :berths, :price_per_month, :decimal

    # ServiceOrder changes:
    # None, hooray!

    # Pier changes:
    # None, woohoo!


  end
end
