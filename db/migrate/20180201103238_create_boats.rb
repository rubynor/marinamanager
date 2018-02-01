class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats, id: false do |t|
      t.primary_key :reg_nr
    end
  end
end
