class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :reg_number
      t.string :model
      t.decimal :width, precision: 8, scale: 2
      t.decimal :length, precision: 8, scale: 2

      t.timestamps
    end
  end
end
