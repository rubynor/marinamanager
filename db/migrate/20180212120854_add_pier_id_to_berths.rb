class AddPierIdToBerths < ActiveRecord::Migration[5.1]
  def change
    add_reference :berths, :pier, foreign_key: true
  end
end
