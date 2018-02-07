class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string   :reg_nr
      t.string    :model
      t.decimal   :width
      t.decimal   :length
      t.timestamps
    end
  end
end
