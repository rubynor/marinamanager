class CreateBerths < ActiveRecord::Migration[5.1]
  def change
    create_table :berths do |t|
      t.string :pier
      t.integer :width
      t.decimal :price_per_month
      t.integer :reg_nr
      t.boolean :in_service

      t.timestamps
    end
  end
end
