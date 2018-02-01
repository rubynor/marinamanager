class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats, id: false do |t|
      t.string   :reg_nr, primary_key: true
      t.string    :model
      t.decimal   :width
      t.decimal   :length
      t.timestamps
    end
  end
end