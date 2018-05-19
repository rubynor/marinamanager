class CreateBerths < ActiveRecord::Migration[5.1]
  def change
    create_table :berths do |t|
      t.decimal :price_per_month
      t.integer :berth_number
      t.boolean :in_service
      t.timestamps
    end
  end
end
