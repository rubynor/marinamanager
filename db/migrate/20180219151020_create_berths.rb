class CreateBerths < ActiveRecord::Migration[5.1]
  def change
    create_table :berths do |t|
      t.integer :berth_number
      t.decimal :width, precision: 8, scale: 2
      t.decimal :price_per_month, precision: 8, scale: 2
      t.boolean :in_service

      t.timestamps
    end
  end
end
