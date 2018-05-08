class CreateBerths < ActiveRecord::Migration[5.1]
  def change
    create_table :berths do |t|
      t.string :letter
    end
  end
end
