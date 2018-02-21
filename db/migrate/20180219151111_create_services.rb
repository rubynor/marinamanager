class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.decimal :price_per_month, precision: 8, scale: 2
      t.boolean :active

      t.timestamps
    end
  end
end
